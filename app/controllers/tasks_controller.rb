class TasksController < ApplicationController
  #get all
    def index
      render json: Task.all
    end

    #get one
    def show
      render json: Task.find(params[:id])
    end

    #post
    def create
      #create a new resources
      render json: Task.create(task_params)
    end

    #patch
    def update
      Task.find(params[:id]).update(task_params)
      render json: Task.find(params[:id])
    end

    #delete
    def destroy
      render json: Task.find(params[:id]).destroy
    end

    def task_params
      params.require(:task).permit(:text, :done)
    end
end
