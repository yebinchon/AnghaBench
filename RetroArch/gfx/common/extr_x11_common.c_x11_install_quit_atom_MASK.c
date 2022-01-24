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
 int /*<<< orphan*/  False ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  g_x11_dpy ; 
 scalar_t__ g_x11_quit_atom ; 
 int /*<<< orphan*/  g_x11_win ; 

void FUNC2(void)
{
   g_x11_quit_atom = FUNC0(g_x11_dpy,
         "WM_DELETE_WINDOW", False);
   if (g_x11_quit_atom)
      FUNC1(g_x11_dpy, g_x11_win, &g_x11_quit_atom, 1);
}