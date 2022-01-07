
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int thumbnail_path_data; int left_thumbnail; int thumbnail; } ;
typedef TYPE_3__ xmb_handle_t ;
struct TYPE_7__ {scalar_t__ network_on_demand_thumbnails; } ;
struct TYPE_6__ {int menu_thumbnail_upscale_threshold; } ;
struct TYPE_9__ {TYPE_2__ bools; TYPE_1__ uints; } ;
typedef TYPE_4__ settings_t ;


 int MENU_THUMBNAIL_LEFT ;
 int MENU_THUMBNAIL_RIGHT ;
 TYPE_4__* config_get_ptr () ;
 int menu_display_handle_left_thumbnail_upload ;
 int menu_display_handle_thumbnail_upload ;
 scalar_t__ menu_navigation_get_selection () ;
 scalar_t__ menu_thumbnail_get_path (int ,int ,char const**) ;
 scalar_t__ menu_thumbnail_get_system (int ,char const**) ;
 scalar_t__ path_is_valid (char const*) ;
 int playlist_get_cached () ;
 int task_push_image_load (char const*,int,int ,int ,int *) ;
 int task_push_pl_entry_thumbnail_download (char const*,int ,unsigned int,int,int) ;
 int video_driver_supports_rgba () ;
 int video_driver_texture_unload (int *) ;

__attribute__((used)) static void xmb_update_thumbnail_image(void *data)
{
   settings_t *settings = config_get_ptr();
   xmb_handle_t *xmb = (xmb_handle_t*)data;
   const char *right_thumbnail_path = ((void*)0);
   const char *left_thumbnail_path = ((void*)0);
   bool supports_rgba = video_driver_supports_rgba();
   if (!xmb || !settings)
      return;

   if (menu_thumbnail_get_path(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT, &right_thumbnail_path))
   {
      if (path_is_valid(right_thumbnail_path))
         task_push_image_load(right_thumbnail_path,
               supports_rgba, settings->uints.menu_thumbnail_upscale_threshold,
               menu_display_handle_thumbnail_upload, ((void*)0));
      else
      {
         video_driver_texture_unload(&xmb->thumbnail);



      }
   }
   else
      video_driver_texture_unload(&xmb->thumbnail);

   if (menu_thumbnail_get_path(xmb->thumbnail_path_data, MENU_THUMBNAIL_LEFT, &left_thumbnail_path))
   {
      if (path_is_valid(left_thumbnail_path))
         task_push_image_load(left_thumbnail_path,
               supports_rgba, settings->uints.menu_thumbnail_upscale_threshold,
               menu_display_handle_left_thumbnail_upload, ((void*)0));
      else
      {
         video_driver_texture_unload(&xmb->left_thumbnail);



      }
   }
   else
      video_driver_texture_unload(&xmb->left_thumbnail);
}
