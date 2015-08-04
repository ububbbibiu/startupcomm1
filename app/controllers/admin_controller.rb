class AdminController < ApplicationController
  def index
  	unless current_user.has_role? :admin
  		redirect_to root_path, notice: 'You are not authorised to see this page'
  	end
  end
end
