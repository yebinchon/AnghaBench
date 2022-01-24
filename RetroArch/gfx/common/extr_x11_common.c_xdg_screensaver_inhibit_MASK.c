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
typedef  int /*<<< orphan*/  cmd ;
typedef  scalar_t__ Window ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int FUNC4 (char*) ; 
 int xdg_screensaver_available ; 

__attribute__((used)) static void FUNC5(Window wnd)
{
   int  ret;
   char cmd[64];

   cmd[0] = '\0';

   FUNC0("[X11]: Suspending screensaver (X11, xdg-screensaver).\n");

   FUNC3(cmd, sizeof(cmd), "xdg-screensaver suspend 0x%x", (int)wnd);

   ret = FUNC4(cmd);
   if (ret == -1)
   {
      xdg_screensaver_available = false;
      FUNC1("Failed to launch xdg-screensaver.\n");
   }
   else if (FUNC2(ret))
   {
      xdg_screensaver_available = false;
      FUNC1("Could not suspend screen saver.\n");
   }
}