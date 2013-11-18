def provide_mortgage?(salary, deposit, property_value, bankrupt)
  return false if bankrupt
  loan_amount = property_value - deposit
  deposit_waiver = deposit >= 0.75 * property_value
  min_deposit = property_value <= 650000 ? 0.05 : 0.2   
  max_multiplier = 5 # how many annual incomes can be borrowed
  salary_is_enough = salary * max_multiplier >= loan_amount
  deposit_is_enough = deposit >= property_value * min_deposit 
  deposit_is_enough && deposit_waiver || salary_is_enough
end

puts provide_mortgage?(25000, 30000, 150000, false)