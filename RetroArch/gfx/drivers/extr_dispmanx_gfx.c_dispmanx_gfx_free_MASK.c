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
struct dispmanx_video {int /*<<< orphan*/  vsync_condition; int /*<<< orphan*/  pending_mutex; int /*<<< orphan*/  display; scalar_t__ menu_surface; scalar_t__ back_surface; scalar_t__ main_surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct dispmanx_video*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct dispmanx_video*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *data)
{
   struct dispmanx_video *_dispvars = data;

   if (!_dispvars)
      return;

   FUNC1(_dispvars, &_dispvars->main_surface);
   FUNC1(_dispvars, &_dispvars->back_surface);

   if (_dispvars->menu_surface)
      FUNC1(_dispvars, &_dispvars->menu_surface);

   /* Close display and deinitialize. */
   FUNC5(_dispvars->display);
   FUNC0();

   /* Destroy mutexes and conditions. */
   FUNC4(_dispvars->pending_mutex);
   FUNC3(_dispvars->vsync_condition);

   FUNC2(_dispvars);
}