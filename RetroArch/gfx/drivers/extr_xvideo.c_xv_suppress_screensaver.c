
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RARCH_DISPLAY_X11 ;
 scalar_t__ video_driver_display_type_get () ;
 int video_driver_window_get () ;
 int x11_suspend_screensaver (int ,int) ;

__attribute__((used)) static bool xv_suppress_screensaver(void *data, bool enable)
{
   (void)data;

   if (video_driver_display_type_get() != RARCH_DISPLAY_X11)
      return 0;

   x11_suspend_screensaver(video_driver_window_get(), enable);
   return 1;
}
