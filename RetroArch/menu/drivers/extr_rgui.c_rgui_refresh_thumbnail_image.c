
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ menu_rgui_inline_thumbnails; } ;
struct TYPE_10__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_11__ {scalar_t__ is_playlist; int thumbnail_path_data; scalar_t__ show_fs_thumbnail; } ;
typedef TYPE_3__ rgui_t ;
struct TYPE_14__ {int is_valid; char* path; scalar_t__ height; scalar_t__ width; } ;
struct TYPE_13__ {int is_valid; char* path; scalar_t__ height; scalar_t__ width; } ;
struct TYPE_12__ {int is_valid; char* path; scalar_t__ height; scalar_t__ width; } ;


 int MENU_THUMBNAIL_LEFT ;
 int MENU_THUMBNAIL_RIGHT ;
 TYPE_2__* config_get_ptr () ;
 TYPE_7__ fs_thumbnail ;
 scalar_t__ menu_thumbnail_is_enabled (int ,int ) ;
 TYPE_6__ mini_left_thumbnail ;
 TYPE_5__ mini_thumbnail ;
 int rgui_scan_selected_entry_thumbnail (TYPE_3__*,int) ;

__attribute__((used)) static void rgui_refresh_thumbnail_image(void *userdata, unsigned i)
{
   rgui_t *rgui = (rgui_t*)userdata;
   settings_t *settings = config_get_ptr();
   if (!rgui || !settings)
      return;


   if ((rgui->show_fs_thumbnail || settings->bools.menu_rgui_inline_thumbnails) &&
       (menu_thumbnail_is_enabled(rgui->thumbnail_path_data, MENU_THUMBNAIL_RIGHT) ||
        menu_thumbnail_is_enabled(rgui->thumbnail_path_data, MENU_THUMBNAIL_LEFT)))
   {

      fs_thumbnail.width = 0;
      fs_thumbnail.height = 0;
      fs_thumbnail.is_valid = 0;
      fs_thumbnail.path[0] = '\0';

      mini_thumbnail.width = 0;
      mini_thumbnail.height = 0;
      mini_thumbnail.is_valid = 0;
      mini_thumbnail.path[0] = '\0';

      mini_left_thumbnail.width = 0;
      mini_left_thumbnail.height = 0;
      mini_left_thumbnail.is_valid = 0;
      mini_left_thumbnail.path[0] = '\0';




      if (rgui->is_playlist)
         rgui_scan_selected_entry_thumbnail(rgui, 1);
   }
}
