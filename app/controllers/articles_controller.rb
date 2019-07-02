include ArticlesHelper
class ArticlesController < ApplicationController
 
def create
 @article = Article.new(article_params)
  @article.save
 flash.notice = "Article '#{@article.title}' Create page opened!"
  redirect_to article_path(@article)
end
def index
  @articles = Article.all
end

def show

@article = Article.find(params[:id])
end

def new
@article = Article.new
 flash.notice = "Article '#{@article.title}' created!"
end

def destroy
@article = Article.find(params[:id])
@article.destroy
 flash.notice = "Article '#{@article.title}' Destroyed!"
end

def edit
  @article = Article.find(params[:id])
end

def update
  @article = Article.find(params[:id])
  @article.update(article_params)
  flash.notice = "Article '#{@article.title}' Updated!"

  redirect_to article_path(@article)
end



end


