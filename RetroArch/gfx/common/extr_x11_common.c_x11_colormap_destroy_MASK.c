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
 scalar_t__ None ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ g_x11_cmap ; 
 int /*<<< orphan*/  g_x11_dpy ; 

void FUNC1(void)
{
   if (!g_x11_cmap)
      return;

   FUNC0(g_x11_dpy, g_x11_cmap);
   g_x11_cmap = None;
}