Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "homes#index"
  resources :homes, only: [:index,:new,:edit,:update]
  resources :places , only: [:index,:new,:create,:edit,:update]
  resources :musics , only: [:index,:new,:create,:edit,:update]
  post "/places" => "places#create"
  post "/musics" => "musics#create"
end