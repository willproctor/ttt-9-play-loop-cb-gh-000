def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != ' ' ? true : false
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(position)
  position = position.to_i - 1
end

def move(array, index, player_token = 'X')
  array[index] = player_token
end

def turn(board)
  puts 'Please enter 1-9:'
  position = gets.strip
  index = input_to_index(position)
  valid_move?(board, index) ? move(board, index) : turn(board)
  display_board(board)
end

def play(board)
  counter = 0
  while counter < 9
    turn(board)
    counter += 1
  end
end