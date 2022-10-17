Rails.application.routes.draw do
  get 'users/show'
  root to: "pages#index"
  get 'pages/index'
  get 'pages/show'
  get '/mypage', to: 'users#mypage'
  devise_for :users
  resources :users, only: [:show, :edit, :update]
end
