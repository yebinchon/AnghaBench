#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int opacity; } ;
typedef  TYPE_1__ dispserv_x11_t ;
typedef  int /*<<< orphan*/  Atom ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  PropModeReplace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_x11_dpy ; 
 int /*<<< orphan*/  g_x11_win ; 

__attribute__((used)) static bool FUNC3(void *data, unsigned opacity)
{
   dispserv_x11_t *serv = (dispserv_x11_t*)data;
   Atom net_wm_opacity  = FUNC2(g_x11_dpy, "_NET_WM_WINDOW_OPACITY", False);
   Atom cardinal        = FUNC2(g_x11_dpy, "CARDINAL", False);

   serv->opacity        = opacity;

   opacity              = opacity * ((unsigned)-1 / 100.0);

   if (opacity == (unsigned)-1)
      FUNC1(g_x11_dpy, g_x11_win, net_wm_opacity);
   else
      FUNC0(g_x11_dpy, g_x11_win, net_wm_opacity, cardinal,
            32, PropModeReplace, (const unsigned char*)&opacity, 1);

   return true;
}