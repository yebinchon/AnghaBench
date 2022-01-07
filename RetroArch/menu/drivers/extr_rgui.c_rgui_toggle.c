
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ menu_rgui_aspect_ratio_lock; } ;
struct TYPE_14__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_15__ {int member_0; } ;
typedef TYPE_3__ rgui_video_settings_t ;
struct TYPE_16__ {int ignore_resize_events; TYPE_3__ content_video_settings; TYPE_3__ menu_video_settings; } ;
typedef TYPE_4__ rgui_t ;
struct TYPE_17__ {int * data; } ;


 scalar_t__ RGUI_ASPECT_RATIO_LOCK_NONE ;
 TYPE_2__* config_get_ptr () ;
 int free (int *) ;
 int rgui_get_video_config (TYPE_3__*) ;
 scalar_t__ rgui_is_video_config_equal (TYPE_3__*,TYPE_3__*) ;
 int rgui_set_video_config (TYPE_4__*,TYPE_3__*,int) ;
 int rgui_update_menu_viewport (TYPE_4__*) ;
 TYPE_5__ rgui_upscale_buf ;

__attribute__((used)) static void rgui_toggle(void *userdata, bool menu_on)
{
   rgui_t *rgui = (rgui_t*)userdata;
   settings_t *settings = config_get_ptr();





   if (!rgui || !settings)
      return;

   if (settings->uints.menu_rgui_aspect_ratio_lock != RGUI_ASPECT_RATIO_LOCK_NONE)
   {
      if (menu_on)
      {

         rgui_get_video_config(&rgui->content_video_settings);


         rgui_update_menu_viewport(rgui);


         rgui_set_video_config(rgui, &rgui->menu_video_settings, 0);
      }
      else
      {



         rgui_video_settings_t current_video_settings = {0};
         rgui_get_video_config(&current_video_settings);

         if (rgui_is_video_config_equal(&current_video_settings, &rgui->menu_video_settings))
            rgui_set_video_config(rgui, &rgui->content_video_settings, 0);



         rgui->ignore_resize_events = 0;
      }
   }




   if (!menu_on && rgui_upscale_buf.data)
   {
      free(rgui_upscale_buf.data);
      rgui_upscale_buf.data = ((void*)0);
   }
}
