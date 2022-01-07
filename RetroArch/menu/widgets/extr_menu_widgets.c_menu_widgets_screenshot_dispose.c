
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int screenshot_loaded ;
 int screenshot_texture ;
 int video_driver_texture_unload (int *) ;

__attribute__((used)) static void menu_widgets_screenshot_dispose(void *userdata)
{
   screenshot_loaded = 0;
   video_driver_texture_unload(&screenshot_texture);
}
