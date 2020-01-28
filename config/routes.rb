Rails.application.routes.draw do
  root to: 'tasks#index'

  get 'signup', to: 'users#new'
  resources :root, :tasks, :users, only: [:new, :create]
end