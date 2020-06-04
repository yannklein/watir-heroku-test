require 'watir'
# require "watir-webdriver/wait"

class PagesController < ApplicationController
  def home
    Watir.default_timeout = 120
    browser = Watir::Browser.new(:chrome, headless: true)
    browser.goto('https://en.duolingo.com/profile/yunshine')
    @result = browser.div(class: '_3e2K7').wait_until_present.html
  end
end
