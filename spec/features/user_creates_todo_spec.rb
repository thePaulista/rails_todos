require 'rails_helper'

feature 'User create todo' do
  scenario 'successfully ' do
    sign_in

    click_on "Add a new todo"

    fill_in "Title", with: "buy milk"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: "buy milk"
  end
end


