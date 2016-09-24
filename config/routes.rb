Rails.application.routes.draw do
	
devise_for :users
resources :users, only: [:index, :show]

  # resources :articles

  resources :articles do
	resource :like, only: [:create, :destroy]
end

# get 'users/index'
# 	get '/users/' => 'users#index'
# 	get '/users/:id' => 'users#show'
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
