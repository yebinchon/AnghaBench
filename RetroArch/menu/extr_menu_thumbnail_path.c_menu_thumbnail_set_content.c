
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* right_path; char* left_path; char* content_path; char* content_label; char* content_core_name; char* content_db_name; char* content_img; void* playlist_left_mode; void* playlist_right_mode; } ;
typedef TYPE_1__ menu_thumbnail_path_data_t ;


 void* PLAYLIST_THUMBNAIL_MODE_DEFAULT ;
 int fill_content_img (TYPE_1__*) ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcpy (char*,char const*,int) ;

bool menu_thumbnail_set_content(menu_thumbnail_path_data_t *path_data, const char *label)
{
   if (!path_data)
      return 0;



   path_data->right_path[0] = '\0';
   path_data->left_path[0] = '\0';


   path_data->content_path[0] = '\0';
   path_data->content_label[0] = '\0';
   path_data->content_core_name[0] = '\0';
   path_data->content_db_name[0] = '\0';
   path_data->content_img[0] = '\0';


   path_data->playlist_right_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;
   path_data->playlist_left_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;

   if (string_is_empty(label))
      return 0;


   strlcpy(path_data->content_label, label, sizeof(path_data->content_label));


   fill_content_img(path_data);



   strlcpy(path_data->content_path, label, sizeof(path_data->content_path));


   if (string_is_empty(path_data->content_img))
      return 0;

   return 1;
}
