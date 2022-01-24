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
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  XA_NET_WM_STATE_FULLSCREEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool FUNC2(Display *dpy)
{
   XA_NET_WM_STATE_FULLSCREEN = FUNC0(dpy, "_NET_WM_STATE_FULLSCREEN", False);

   return FUNC1(dpy, XA_NET_WM_STATE_FULLSCREEN);
}