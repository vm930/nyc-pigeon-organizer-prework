
require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do 
    |key1, value1| # :color => {}
    value1.each do 
      |key2, value2| #:purple => []
      value2.each do |value_str|  #"theo"
        #new_hash[value_str] = {key1 =>[]}
        if !(new_hash.has_key?(value_str))
          new_hash[value_str] = {key1 =>[value2.to_s]}
          #binding.pry
        else
          if !(new_hash[value_str].has_key?(key1))
            new_hash[value_str][key1] = [key2.to_s]
          else 
            new_hash[value_str][key1] << key2.to_s
          end 
       end
     end 
    end
  end
  new_hash
end 


# i think i might need help with this :(((

















# def nyc_pigeon_organizer(data)
#   data.each_with_object({}) do |(key, h), result|
#     h.each do |value, names|
#       names.each do |name|
#         result[name] ||= {}
#         result[name][key] ||= []
#         result[name][key] << value.to_s
#       end
#     end
#   end
# end
