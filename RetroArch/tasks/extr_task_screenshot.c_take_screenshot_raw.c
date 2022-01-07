
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int screenshot_dump (char const*,char const*,int const*,unsigned int,unsigned int,int,int,void*,int,int,int,int,int,unsigned int) ;
 int video_driver_cached_frame_get (void const**,unsigned int*,unsigned int*,size_t*) ;

__attribute__((used)) static bool take_screenshot_raw(const char *screenshot_dir,
      const char *name_base, void *userbuf,
      bool savestate, bool is_idle, bool is_paused, bool fullpath, bool use_thread,
      unsigned pixel_format_type)
{
   size_t pitch;
   unsigned width, height;
   const void *data = ((void*)0);

   video_driver_cached_frame_get(&data, &width, &height, &pitch);




   if (!screenshot_dump(screenshot_dir,
            name_base,
            (const uint8_t*)data + (height - 1) * pitch,
            width,
            height,
            (int)(-pitch),
            0,
            userbuf,
            savestate,
            is_idle,
            is_paused,
            fullpath,
            use_thread,
            pixel_format_type))
      return 0;

   return 1;
}
