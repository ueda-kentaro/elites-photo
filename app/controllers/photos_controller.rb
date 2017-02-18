class PhotosController < ApplicationController
    before_action:set_photo, only: [:show, :edit, :update, :destroy]
    
    def index
        @photos = Photo.all
    end
    def show
        # @photo = Photo.find(params[:id])
    end
    def new
        @photo = Photo.new
    end
    def create
        # binding.pry
        @photo = Photo.new(photo_params)
        @photo.save
        redirect_to photo_path(@photo)
    end
    def edit
        # @photo = Photo.find(params[:id])
    end
    def update
        # @photo = Photo.find(params[:id])
        @photo.update(photo_params)
        redirect_to photos_path
    end
    def destroy
        # @photo = Photo.find(params[:id])
        @photo.destroy
        redirect_to photos_path
    end
    
    private
    def photo_params
        params.require(:photo).permit(:url, :title)
    end
    def set_photo
        @photo = Photo.find(params[:id])
    end
end
