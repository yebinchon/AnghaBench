#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct sunxi_video {unsigned int src_width; unsigned int src_height; TYPE_1__* sunxi_disp; scalar_t__ menu_active; } ;
struct TYPE_2__ {int /*<<< orphan*/  fd_fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBIO_WAITFORVSYNC ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sunxi_video*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (void const*,struct sunxi_video*) ; 

__attribute__((used)) static bool FUNC5(void *data, const void *frame, unsigned width,
      unsigned height, uint64_t frame_count, unsigned pitch, const char *msg,
      video_frame_info_t *video_info)
{
   struct sunxi_video *_dispvars = (struct sunxi_video*)data;

   if (_dispvars->src_width != width || _dispvars->src_height != height)
   {
      /* Sanity check on new dimensions */
      if (width == 0 || height == 0)
         return true;

      FUNC0("video_sunxi: internal resolution changed by core: %ux%u -> %ux%u\n",
            _dispvars->src_width, _dispvars->src_height, width, height);

      FUNC3(_dispvars, width, height, pitch);
   }

#ifdef HAVE_MENU
   menu_driver_frame(video_info);
#endif

   if (_dispvars->menu_active)
   {
      FUNC1(_dispvars->sunxi_disp->fd_fb, FBIO_WAITFORVSYNC, 0);
      return true;
   }

   FUNC4(frame, _dispvars);

   return true;
}