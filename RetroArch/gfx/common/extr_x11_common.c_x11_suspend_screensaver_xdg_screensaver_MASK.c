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
typedef  int /*<<< orphan*/  Window ;

/* Variables and functions */
 scalar_t__ xdg_screensaver_available ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(Window wnd, bool enable)
{
   /* Check if screensaver suspend is enabled in config */
   if (!enable)
      return;

   if (xdg_screensaver_available)
      FUNC0(wnd);
}