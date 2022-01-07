
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int network_on_demand_thumbnails; scalar_t__ menu_rgui_inline_thumbnails; } ;
struct TYPE_8__ {scalar_t__ menu_rgui_thumbnail_delay; } ;
struct TYPE_10__ {TYPE_2__ bools; TYPE_1__ uints; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_11__ {int entry_has_thumbnail; int entry_has_left_thumbnail; int thumbnail_load_pending; int thumbnail_load_trigger_time; int thumbnail_path_data; scalar_t__ is_playlist; scalar_t__ show_fs_thumbnail; } ;
typedef TYPE_4__ rgui_t ;


 int MENU_THUMBNAIL_LEFT ;
 int MENU_THUMBNAIL_RIGHT ;
 TYPE_3__* config_get_ptr () ;
 int cpu_features_get_time_usec () ;
 int menu_navigation_get_selection () ;
 scalar_t__ menu_thumbnail_is_enabled (int ,int ) ;
 scalar_t__ menu_thumbnail_set_content_playlist (int ,int ,int ) ;
 int menu_thumbnail_update_path (int ,int ) ;
 int playlist_get_cached () ;
 int rgui_load_current_thumbnails (TYPE_4__*,int ) ;

__attribute__((used)) static void rgui_scan_selected_entry_thumbnail(rgui_t *rgui, bool force_load)
{
   bool has_thumbnail = 0;
   settings_t *settings = config_get_ptr();

   if (!settings)
      return;

   rgui->entry_has_thumbnail = 0;
   rgui->entry_has_left_thumbnail = 0;
   rgui->thumbnail_load_pending = 0;


   if ((rgui->show_fs_thumbnail || settings->bools.menu_rgui_inline_thumbnails) && rgui->is_playlist)
   {
      if (menu_thumbnail_set_content_playlist(rgui->thumbnail_path_data,
            playlist_get_cached(), menu_navigation_get_selection()))
      {
         if (menu_thumbnail_is_enabled(rgui->thumbnail_path_data, MENU_THUMBNAIL_RIGHT))
            has_thumbnail = menu_thumbnail_update_path(rgui->thumbnail_path_data, MENU_THUMBNAIL_RIGHT);

         if (settings->bools.menu_rgui_inline_thumbnails &&
             menu_thumbnail_is_enabled(rgui->thumbnail_path_data, MENU_THUMBNAIL_LEFT))
            has_thumbnail = menu_thumbnail_update_path(rgui->thumbnail_path_data, MENU_THUMBNAIL_LEFT) ||
                            has_thumbnail;
      }
   }


   if (has_thumbnail)
   {

      if ((settings->uints.menu_rgui_thumbnail_delay == 0) || force_load)
         rgui_load_current_thumbnails(rgui, settings->bools.network_on_demand_thumbnails);
      else
      {

         rgui->thumbnail_load_pending = 1;
         rgui->thumbnail_load_trigger_time = cpu_features_get_time_usec();
      }
   }
}
