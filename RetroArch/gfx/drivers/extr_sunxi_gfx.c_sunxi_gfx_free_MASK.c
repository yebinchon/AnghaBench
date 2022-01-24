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
struct sunxi_video {int keep_vsync; int /*<<< orphan*/  sunxi_disp; struct sunxi_video* pages; int /*<<< orphan*/  vsync_condition; int /*<<< orphan*/  pending_mutex; int /*<<< orphan*/  vsync_thread; int /*<<< orphan*/  menu_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sunxi_video*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sunxi_video*) ; 

__attribute__((used)) static void FUNC6(void *data)
{
   struct sunxi_video *_dispvars = (struct sunxi_video*)data;

   /* Stop the vsync thread and wait for it to join. */
   /* When menu is active, vsync thread has already been stopped. */
   if (!_dispvars->menu_active)
   {
      _dispvars->keep_vsync = false;
      FUNC3(_dispvars->vsync_thread);
   }

   FUNC2(_dispvars->pending_mutex);
   FUNC1(_dispvars->vsync_condition);

   FUNC0(_dispvars->pages);

   /* Restore text console contents and reactivate cursor blinking. */
   FUNC5(_dispvars);

   FUNC4(_dispvars->sunxi_disp);
   FUNC0(_dispvars);
}