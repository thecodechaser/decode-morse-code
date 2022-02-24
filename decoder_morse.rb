def decode_char(dycrpt_message)
  decoder = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
              '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
              '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
              '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1',
              '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
              '---..' => '8', '----.' => '9', '-----' => '0' }

  decoder[dycrpt_message]
end

print decode_char('.-')
# => A

def decode_word(dycrpt_message)
  return_value = ''
  characters = dycrpt_message.split
  characters.each { |item| return_value += decode_char(item) }
  return_value
end

print decode_word('.-. ..- -... -.--')
# => RUBY

def decode_message(dycrpt_message)
  return_value = ''
  words = dycrpt_message.gsub('/', ' ').split('   ')
  words.each { |item| return_value += " #{decode_word(item)}" }
  return_value.strip
end

print decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')

# => A BOX FULL OF RUBIES
