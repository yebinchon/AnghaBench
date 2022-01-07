
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path_menu_wallpaper; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;
typedef int materialui_handle_t ;


 TYPE_2__* config_get_ptr () ;
 int materialui_context_bg_destroy (int *) ;
 int materialui_context_reset_textures (int *) ;
 int materialui_layout (int *,int) ;
 int menu_display_allocate_white_texture () ;
 int menu_display_handle_wallpaper_upload ;
 scalar_t__ path_is_valid (int ) ;
 int task_push_image_load (int ,int ,int ,int ,int *) ;
 int video_driver_monitor_reset () ;
 int video_driver_supports_rgba () ;

__attribute__((used)) static void materialui_context_reset(void *data, bool is_threaded)
{
   materialui_handle_t *mui = (materialui_handle_t*)data;
   settings_t *settings = config_get_ptr();

   if (!mui || !settings)
      return;

   materialui_layout(mui, is_threaded);
   materialui_context_bg_destroy(mui);
   menu_display_allocate_white_texture();
   materialui_context_reset_textures(mui);

   if (path_is_valid(settings->paths.path_menu_wallpaper))
      task_push_image_load(settings->paths.path_menu_wallpaper,
            video_driver_supports_rgba(), 0,
            menu_display_handle_wallpaper_upload, ((void*)0));

   video_driver_monitor_reset();
}
