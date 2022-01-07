
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ menu_rgui_aspect_ratio_lock; } ;
struct TYPE_10__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_11__ {int member_0; } ;
typedef TYPE_3__ rgui_video_settings_t ;
struct TYPE_12__ {int is_playlist; int thumbnail_load_pending; int ignore_resize_events; int content_video_settings; int menu_video_settings; int menu_title; } ;
typedef TYPE_4__ rgui_t ;


 int MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_VIDEO_SETTINGS_LIST ;
 int MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY ;
 scalar_t__ RGUI_ASPECT_RATIO_LOCK_NONE ;
 TYPE_2__* config_get_ptr () ;
 int menu_entries_get_title (int ,int) ;
 int msg_hash_to_str (int ) ;
 int rgui_get_video_config (TYPE_3__*) ;
 scalar_t__ rgui_is_video_config_equal (TYPE_3__*,int *) ;
 int rgui_navigation_set (void*,int) ;
 int rgui_set_video_config (TYPE_4__*,int *,int) ;
 scalar_t__ string_is_equal (char const*,int ) ;

__attribute__((used)) static void rgui_populate_entries(void *data,
      const char *path,
      const char *label, unsigned k)
{
   rgui_t *rgui = (rgui_t*)data;
   settings_t *settings = config_get_ptr();

   if (!rgui || !settings)
      return;


   rgui->is_playlist = string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST)) ||
                       string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY)) ||
                       string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST));


   menu_entries_get_title(rgui->menu_title, sizeof(rgui->menu_title));


   rgui->thumbnail_load_pending = 0;

   rgui_navigation_set(data, 1);




   if (settings->uints.menu_rgui_aspect_ratio_lock != RGUI_ASPECT_RATIO_LOCK_NONE)
   {
      if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_VIDEO_SETTINGS_LIST)))
      {


         rgui_video_settings_t current_video_settings = {0};
         rgui_get_video_config(&current_video_settings);
         if (rgui_is_video_config_equal(&current_video_settings, &rgui->menu_video_settings))
         {
            rgui_set_video_config(rgui, &rgui->content_video_settings, 0);


            rgui->ignore_resize_events = 1;
         }
      }
   }
}
