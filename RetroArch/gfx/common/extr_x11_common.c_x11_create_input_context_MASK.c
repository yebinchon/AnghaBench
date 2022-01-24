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
typedef  int /*<<< orphan*/  XIM ;
typedef  int /*<<< orphan*/  XIC ;
typedef  int /*<<< orphan*/  Window ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int XIMPreeditNothing ; 
 int XIMStatusNothing ; 
 int /*<<< orphan*/  XNClientWindow ; 
 int /*<<< orphan*/  XNInputStyle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int g_x11_has_focus ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool FUNC5(Display *dpy, Window win, XIM *xim, XIC *xic)
{
   FUNC4(xim, xic);

   g_x11_has_focus = true;
   *xim            = FUNC2(dpy, NULL, NULL, NULL);

   if (!*xim)
   {
      FUNC0("[X11]: Failed to open input method.\n");
      return false;
   }

   *xic = FUNC1(*xim, XNInputStyle,
         XIMPreeditNothing | XIMStatusNothing, XNClientWindow, win, NULL);

   if (!*xic)
   {
      FUNC0("[X11]: Failed to create input context.\n");
      return false;
   }

   FUNC3(*xic);
   return true;
}