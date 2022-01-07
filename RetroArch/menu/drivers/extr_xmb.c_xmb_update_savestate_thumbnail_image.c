
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int savestate_thumbnail; int savestate_thumbnail_file_path; } ;
typedef TYPE_1__ xmb_handle_t ;


 int menu_display_handle_savestate_thumbnail_upload ;
 scalar_t__ path_is_valid (int ) ;
 int task_push_image_load (int ,int ,int ,int ,int *) ;
 int video_driver_supports_rgba () ;
 int video_driver_texture_unload (int *) ;

__attribute__((used)) static void xmb_update_savestate_thumbnail_image(void *data)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;
   if (!xmb)
      return;

   if (path_is_valid(xmb->savestate_thumbnail_file_path))
      task_push_image_load(xmb->savestate_thumbnail_file_path,
            video_driver_supports_rgba(), 0,
            menu_display_handle_savestate_thumbnail_upload, ((void*)0));
   else
      video_driver_texture_unload(&xmb->savestate_thumbnail);
}
