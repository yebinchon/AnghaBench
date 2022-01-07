
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct video_viewport {unsigned int full_width; double full_height; } ;
struct TYPE_8__ {scalar_t__ menu_rgui_aspect_ratio_lock; } ;
struct TYPE_11__ {TYPE_1__ uints; } ;
typedef TYPE_4__ settings_t ;
struct TYPE_9__ {unsigned int width; double height; int x; int y; } ;
struct TYPE_10__ {TYPE_2__ viewport; int aspect_ratio_idx; } ;
struct TYPE_12__ {TYPE_3__ menu_video_settings; } ;
typedef TYPE_5__ rgui_t ;


 int ASPECT_RATIO_CUSTOM ;
 scalar_t__ CONF_ASPECT_4_3 ;
 scalar_t__ CONF_GetAspectRatio () ;
 scalar_t__ RGUI_ASPECT_RATIO_LOCK_INTEGER ;
 TYPE_4__* config_get_ptr () ;
 int menu_display_get_fb_size (unsigned int*,unsigned int*,size_t*) ;
 int video_driver_get_viewport_info (struct video_viewport*) ;

__attribute__((used)) static void rgui_update_menu_viewport(rgui_t *rgui)
{
   settings_t *settings = config_get_ptr();
   size_t fb_pitch;
   unsigned fb_width, fb_height;
   struct video_viewport vp;

   if (!settings)
      return;

   menu_display_get_fb_size(&fb_width, &fb_height, &fb_pitch);
   video_driver_get_viewport_info(&vp);



   rgui->menu_video_settings.aspect_ratio_idx = ASPECT_RATIO_CUSTOM;


   if (fb_width > 0 && fb_height > 0 && vp.full_width > 0 && vp.full_height > 0)
   {
      bool do_integer_scaling = (settings->uints.menu_rgui_aspect_ratio_lock == RGUI_ASPECT_RATIO_LOCK_INTEGER);

      if (do_integer_scaling)
      {
         unsigned width_scale = (vp.full_width / fb_width);
         unsigned height_scale = (vp.full_height / fb_height);
         unsigned scale = (width_scale <= height_scale) ? width_scale : height_scale;

         if (scale > 0)
         {
            rgui->menu_video_settings.viewport.width = scale * fb_width;
            rgui->menu_video_settings.viewport.height = scale * fb_height;
         }
         else
            do_integer_scaling = 0;
      }

      if (!do_integer_scaling)
      {
         float display_aspect_ratio = (float)vp.full_width / (float)vp.full_height;
         float aspect_ratio = (float)fb_width / (float)fb_height;

         if (aspect_ratio > display_aspect_ratio)
         {
            rgui->menu_video_settings.viewport.width = vp.full_width;
            rgui->menu_video_settings.viewport.height = fb_height * vp.full_width / fb_width;
         }
         else
         {
            rgui->menu_video_settings.viewport.height = vp.full_height;
            rgui->menu_video_settings.viewport.width = fb_width * vp.full_height / fb_height;
         }
      }



      rgui->menu_video_settings.viewport.width = (rgui->menu_video_settings.viewport.width < 1) ?
         1 : rgui->menu_video_settings.viewport.width;
      rgui->menu_video_settings.viewport.height = (rgui->menu_video_settings.viewport.height < 1) ?
         1 : rgui->menu_video_settings.viewport.height;
   }
   else
   {
      rgui->menu_video_settings.viewport.width = 1;
      rgui->menu_video_settings.viewport.height = 1;
   }

   rgui->menu_video_settings.viewport.x = (vp.full_width - rgui->menu_video_settings.viewport.width) / 2;
   rgui->menu_video_settings.viewport.y = (vp.full_height - rgui->menu_video_settings.viewport.height) / 2;
}
