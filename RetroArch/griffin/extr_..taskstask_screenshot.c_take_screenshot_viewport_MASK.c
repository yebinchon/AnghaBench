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
typedef  int /*<<< orphan*/  uint8_t ;
struct video_viewport {int width; int height; scalar_t__ full_height; scalar_t__ full_width; scalar_t__ y; scalar_t__ x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ *,int,int,int,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct video_viewport*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC5(
      const char *screenshot_dir,
      const char *name_base,
      bool savestate,
      bool is_idle,
      bool is_paused,
      bool fullpath,
      bool use_thread,
      unsigned pixel_format_type)
{
   struct video_viewport vp;
   uint8_t *buffer                       = NULL;

   vp.x                                  = 0;
   vp.y                                  = 0;
   vp.width                              = 0;
   vp.height                             = 0;
   vp.full_width                         = 0;
   vp.full_height                        = 0;

   FUNC3(&vp);

   if (!vp.width || !vp.height)
      return false;

   buffer = (uint8_t*)FUNC1(vp.width * vp.height * 3);

   if (!buffer)
      return false;

   if (!FUNC4(buffer, is_idle))
   {
      FUNC0(buffer);
      return false;
   }

   /* Data read from viewport is in bottom-up order, suitable for BMP. */
   if (!FUNC2(screenshot_dir,
            name_base,
            buffer, vp.width, vp.height,
            vp.width * 3, true, buffer,
            savestate, is_idle, is_paused, fullpath, use_thread,
            pixel_format_type))
   {
      FUNC0(buffer);
      return false;
   }

   return true;
}