
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int runloop_get_status (int*,int*,int*,int*) ;
 scalar_t__ string_is_empty (char const*) ;
 int take_screenshot_choice (char const*,char const*,int,int,int,int,int,int,int,int ,int ) ;
 int video_driver_cached_frame () ;
 int video_driver_get_pixel_format () ;
 scalar_t__ video_driver_prefer_viewport_read () ;
 int video_driver_supports_read_frame_raw () ;
 scalar_t__ video_driver_supports_viewport_read () ;

bool take_screenshot(
      const char *screenshot_dir,
      const char *name_base,
      bool silence, bool has_valid_framebuffer,
      bool fullpath, bool use_thread)
{
   bool is_paused = 0;
   bool is_idle = 0;
   bool is_slowmotion = 0;
   bool is_perfcnt_enable = 0;
   bool ret = 0;

   runloop_get_status(&is_paused, &is_idle, &is_slowmotion, &is_perfcnt_enable);


   if ( string_is_empty(screenshot_dir)
         && string_is_empty(name_base))
      return 0;

   ret = take_screenshot_choice(
         screenshot_dir,
         name_base, silence, is_paused, is_idle,
         has_valid_framebuffer, fullpath, use_thread,
         video_driver_supports_viewport_read() &&
         video_driver_prefer_viewport_read(),
         video_driver_supports_read_frame_raw(),
         video_driver_get_pixel_format()
         );

   if (is_paused && !is_idle)
         video_driver_cached_frame();

   return ret;
}
