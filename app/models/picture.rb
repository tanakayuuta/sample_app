class Picture < ActiveRecord::Base

　 # ファイル用の属性を追加するhas_attached_fileメソッド
  has_attached_file :image, styles: { medium: "200x150>", thumb: "50x50>" }

  #  画像の拡張子を限定するためのvalidatorを定義
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png image/gif)
end
