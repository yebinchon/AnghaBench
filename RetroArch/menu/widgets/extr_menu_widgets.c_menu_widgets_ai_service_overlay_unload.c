
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ai_service_overlay_state ;
 int ai_service_overlay_texture ;
 int video_driver_texture_unload (int *) ;

void menu_widgets_ai_service_overlay_unload()
{
   if (ai_service_overlay_state == 1)
   {
      video_driver_texture_unload(&ai_service_overlay_texture);
      ai_service_overlay_state = 0;
   }
}
