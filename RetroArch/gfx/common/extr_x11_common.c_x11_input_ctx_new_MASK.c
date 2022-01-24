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
 int /*<<< orphan*/  RARCH_DISPLAY_X11 ; 
 scalar_t__ g_x11_dpy ; 
 int g_x11_true_full ; 
 scalar_t__ g_x11_win ; 
 int /*<<< orphan*/  g_x11_xic ; 
 int /*<<< orphan*/  g_x11_xim ; 
 int /*<<< orphan*/  FUNC0 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool FUNC4(bool true_full)
{
   if (!FUNC3(g_x11_dpy, g_x11_win,
            &g_x11_xim, &g_x11_xic))
      return false;

   FUNC1(RARCH_DISPLAY_X11);
   FUNC0((uintptr_t)g_x11_dpy);
   FUNC2((uintptr_t)g_x11_win);
   g_x11_true_full       = true_full;
   return true;
}