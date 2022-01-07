
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thumbnail_load_pending; int force_redraw; int thumbnail_path_data; int left_thumbnail_queue_size; void* entry_has_left_thumbnail; scalar_t__ show_fs_thumbnail; int thumbnail_queue_size; void* entry_has_thumbnail; } ;
typedef TYPE_1__ rgui_t ;


 int MENU_THUMBNAIL_LEFT ;
 int MENU_THUMBNAIL_RIGHT ;
 int fs_thumbnail ;
 scalar_t__ menu_navigation_get_selection () ;
 scalar_t__ menu_thumbnail_get_path (int ,int ,char const**) ;
 scalar_t__ menu_thumbnail_get_system (int ,char const**) ;
 int mini_left_thumbnail ;
 int mini_thumbnail ;
 int playlist_get_cached () ;
 void* request_thumbnail (int *,int ,int *,char const*,int*) ;
 int task_push_pl_entry_thumbnail_download (char const*,int ,unsigned int,int,int) ;

__attribute__((used)) static void rgui_load_current_thumbnails(rgui_t *rgui, bool download_missing)
{
   const char *thumbnail_path = ((void*)0);
   const char *left_thumbnail_path = ((void*)0);
   bool thumbnails_missing = 0;


   if (menu_thumbnail_get_path(rgui->thumbnail_path_data,
         MENU_THUMBNAIL_RIGHT, &thumbnail_path))
   {
      rgui->entry_has_thumbnail = request_thumbnail(
            rgui->show_fs_thumbnail ? &fs_thumbnail : &mini_thumbnail,
            MENU_THUMBNAIL_RIGHT,
            &rgui->thumbnail_queue_size,
            thumbnail_path,
            &thumbnails_missing);
   }




   if (!rgui->show_fs_thumbnail)
   {
      if (menu_thumbnail_get_path(rgui->thumbnail_path_data,
            MENU_THUMBNAIL_LEFT, &left_thumbnail_path))
      {
         rgui->entry_has_left_thumbnail = request_thumbnail(
               &mini_left_thumbnail,
               MENU_THUMBNAIL_LEFT,
               &rgui->left_thumbnail_queue_size,
               left_thumbnail_path,
               &thumbnails_missing);
      }
   }


   rgui->thumbnail_load_pending = 0;



   rgui->force_redraw = 1;
}
