#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int FUNC0 (char const*,char const*,void*,int,int,int,int,int,unsigned int) ; 
 int FUNC1 (char const*,char const*,int,int,int,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void const**,unsigned int*,unsigned int*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (void const*,unsigned int,unsigned int,size_t) ; 
 void* FUNC5 (unsigned int*,unsigned int*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static bool FUNC8(
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
   void *frame_data            = NULL;
   const void* old_data        = NULL;

   if (supports_viewport_read)
   {
      /* Avoid taking screenshot of GUI overlays. */
      FUNC7(false, false);
      if (!is_idle)
         FUNC2();
      return FUNC1(screenshot_dir,
            name_base, savestate, is_idle, is_paused, fullpath, use_thread,
            pixel_format_type);
   }

   if (!has_valid_framebuffer)
      return FUNC0(screenshot_dir,
            name_base, NULL, savestate, is_idle, is_paused, fullpath, use_thread,
            pixel_format_type);

   if (!supports_read_frame_raw)
      return false;

   FUNC3(&old_data, &old_width, &old_height,
         &old_pitch);

   frame_data = FUNC5(
         &old_width, &old_height, &old_pitch);

   FUNC4(old_data, old_width, old_height,
         old_pitch);

   if (frame_data)
   {
      FUNC6(frame_data);
      if (FUNC0(screenshot_dir,
               name_base, frame_data, savestate, is_idle, is_paused, fullpath, use_thread,
               pixel_format_type))
         return true;
   }

   return false;
}