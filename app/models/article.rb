class Article < ApplicationRecord
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  def tag_list
    return tags.join(", ")
  end

  def tag_list=(tags_string)

  end
  
end
