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
typedef  int /*<<< orphan*/  video_frame_info_t ;
typedef  int /*<<< orphan*/  XF86VidModeModeInfo ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  desktop_mode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool FUNC4(video_frame_info_t *video_info,
      Display *dpy, unsigned width,
      unsigned height)
{
   XF86VidModeModeInfo mode;

   if (!FUNC3(video_info, dpy, width, height, &mode, &desktop_mode))
      return false;

   if (!FUNC2(dpy, FUNC0(dpy), &mode))
      return false;

   FUNC1(dpy, FUNC0(dpy), 0, 0);
   return true;
}