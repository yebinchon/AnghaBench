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
struct sunxi_video {int menu_active; int keep_vsync; int /*<<< orphan*/  vsync_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sunxi_video*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sunxi_vsync_thread_func ; 

__attribute__((used)) static void FUNC2(void *data, bool state, bool full_screen)
{
   struct sunxi_video *_dispvars = (struct sunxi_video*)data;

   /* If it wasn't active and starts being active... */
   if (!_dispvars->menu_active && state)
   {
      /* Stop the vsync thread. */
      _dispvars->keep_vsync = false;
      FUNC1(_dispvars->vsync_thread);
   }

   /* If it was active but now it isn't active anymore... */
   if (_dispvars->menu_active && !state)
   {
      _dispvars->keep_vsync = true;
      _dispvars->vsync_thread = FUNC0(sunxi_vsync_thread_func, _dispvars);
   }
   _dispvars->menu_active = state;
}