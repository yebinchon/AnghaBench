
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ menu_shader_pipeline; } ;
typedef TYPE_1__ video_frame_info_t ;


 scalar_t__ XMB_SHADER_PIPELINE_WALLPAPER ;
 int menu_driver_ident () ;
 scalar_t__ string_is_not_equal (int ,char*) ;

__attribute__((used)) static bool stripes_shader_pipeline_active(video_frame_info_t *video_info)
{
   if (string_is_not_equal(menu_driver_ident(), "stripes"))
      return 0;
   if (video_info->menu_shader_pipeline == XMB_SHADER_PIPELINE_WALLPAPER)
      return 0;
   return 1;
}
