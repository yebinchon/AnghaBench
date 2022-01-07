
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int take_screenshot_raw (char const*,char const*,void*,int,int,int,int,int,unsigned int) ;
 int take_screenshot_viewport (char const*,char const*,int,int,int,int,int,unsigned int) ;
 int video_driver_cached_frame () ;
 int video_driver_cached_frame_get (void const**,unsigned int*,unsigned int*,size_t*) ;
 int video_driver_cached_frame_set (void const*,unsigned int,unsigned int,size_t) ;
 void* video_driver_read_frame_raw (unsigned int*,unsigned int*,size_t*) ;
 int video_driver_set_cached_frame_ptr (void*) ;
 int video_driver_set_texture_enable (int,int) ;

__attribute__((used)) static bool take_screenshot_choice(
      const char *screenshot_dir,
      const char *name_base,
      bool savestate,
      bool is_paused,
      bool is_idle,
      bool has_valid_framebuffer,
      bool fullpath,
      bool use_thread,
      bool supports_viewport_read,
      bool supports_read_frame_raw,
      unsigned pixel_format_type
      )
{
   size_t old_pitch;
   unsigned old_width, old_height;
   void *frame_data = ((void*)0);
   const void* old_data = ((void*)0);

   if (supports_viewport_read)
   {

      video_driver_set_texture_enable(0, 0);
      if (!is_idle)
         video_driver_cached_frame();
      return take_screenshot_viewport(screenshot_dir,
            name_base, savestate, is_idle, is_paused, fullpath, use_thread,
            pixel_format_type);
   }

   if (!has_valid_framebuffer)
      return take_screenshot_raw(screenshot_dir,
            name_base, ((void*)0), savestate, is_idle, is_paused, fullpath, use_thread,
            pixel_format_type);

   if (!supports_read_frame_raw)
      return 0;

   video_driver_cached_frame_get(&old_data, &old_width, &old_height,
         &old_pitch);

   frame_data = video_driver_read_frame_raw(
         &old_width, &old_height, &old_pitch);

   video_driver_cached_frame_set(old_data, old_width, old_height,
         old_pitch);

   if (frame_data)
   {
      video_driver_set_cached_frame_ptr(frame_data);
      if (take_screenshot_raw(screenshot_dir,
               name_base, frame_data, savestate, is_idle, is_paused, fullpath, use_thread,
               pixel_format_type))
         return 1;
   }

   return 0;
}
