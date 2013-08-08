class User
	include MongoMapper::Document

  key :name, String
  key :email, String

  attr_accessible :name, :email

  many :kanbans
end

class Kanban
 include MongoMapper::Document

 key :board_name
 timestamps!

 many :blocks

end

class Block
	include MongoMapper::Document

	timestamps!
	key :title, String
	key :description, Text

	belongs_to ????
end

class Task
	include MongoMapper::Document

end

