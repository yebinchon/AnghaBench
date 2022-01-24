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
typedef  scalar_t__ Window ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int ButtonPressMask ; 
 int ButtonReleaseMask ; 
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  GrabModeAsync ; 
 int /*<<< orphan*/  None ; 
 int PointerMotionMask ; 
 scalar_t__ RARCH_DISPLAY_X11 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *data, bool state)
{
#ifdef HAVE_X11
   Window window;
   Display *display = NULL;

   if (video_driver_display_type_get() != RARCH_DISPLAY_X11)
   {
      RARCH_WARN("[udev]: Mouse grab/ungrab feature unavailable.\n");
      return;
   }

   display = (Display*)video_driver_display_get();
   window  = (Window)video_driver_window_get();

   if (state)
      XGrabPointer(display, window, False,
            ButtonPressMask | ButtonReleaseMask | PointerMotionMask,
            GrabModeAsync, GrabModeAsync, window, None, CurrentTime);
   else
      XUngrabPointer(display, CurrentTime);
#else
   FUNC0("[udev]: Mouse grab/ungrab feature unavailable.\n");
#endif
}