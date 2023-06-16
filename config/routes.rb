Rails.application.routes.draw do
  root "sessions#new"
  resources :blogs
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :favorites, only: [:index, :create, :destroy]
end
