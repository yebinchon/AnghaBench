
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* playlist_left_mode; void* playlist_right_mode; } ;
typedef TYPE_1__ menu_thumbnail_path_data_t ;


 void* PLAYLIST_THUMBNAIL_MODE_DEFAULT ;
 scalar_t__ calloc (int,int) ;

menu_thumbnail_path_data_t *menu_thumbnail_path_init(void)
{
   menu_thumbnail_path_data_t *path_data = (menu_thumbnail_path_data_t*)
      calloc(1, sizeof(*path_data));
   if (!path_data)
      return ((void*)0);



   path_data->playlist_right_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;
   path_data->playlist_left_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;

   return path_data;
}
