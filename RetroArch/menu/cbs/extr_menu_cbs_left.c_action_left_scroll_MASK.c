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
 int FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  MENU_NAVIGATION_CTL_CLEAR ; 
 int /*<<< orphan*/  MENU_NAVIGATION_CTL_GET_SCROLL_ACCEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 

__attribute__((used)) static int FUNC5(unsigned type, const char *label,
      bool wraparound)
{
   size_t scroll_accel   = 0;
   unsigned scroll_speed = 0, fast_scroll_speed = 0;
   size_t selection      = FUNC3();

   if (!FUNC1(MENU_NAVIGATION_CTL_GET_SCROLL_ACCEL, &scroll_accel))
      return false;

   scroll_speed          = (unsigned)((FUNC0(scroll_accel, 2) - 2) / 4 + 1);
   fast_scroll_speed     = 4 + 4 * scroll_speed;

   if (selection > fast_scroll_speed)
   {
      size_t idx  = selection - fast_scroll_speed;
      FUNC4(idx);
      FUNC2(true);
   }
   else
   {
      bool pending_push = false;
      FUNC1(MENU_NAVIGATION_CTL_CLEAR, &pending_push);
   }

   return 0;
}