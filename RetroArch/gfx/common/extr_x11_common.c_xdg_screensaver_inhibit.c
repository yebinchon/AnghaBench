
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmd ;
typedef scalar_t__ Window ;


 int RARCH_LOG (char*) ;
 int RARCH_WARN (char*) ;
 scalar_t__ WEXITSTATUS (int) ;
 int snprintf (char*,int,char*,int) ;
 int system (char*) ;
 int xdg_screensaver_available ;

__attribute__((used)) static void xdg_screensaver_inhibit(Window wnd)
{
   int ret;
   char cmd[64];

   cmd[0] = '\0';

   RARCH_LOG("[X11]: Suspending screensaver (X11, xdg-screensaver).\n");

   snprintf(cmd, sizeof(cmd), "xdg-screensaver suspend 0x%x", (int)wnd);

   ret = system(cmd);
   if (ret == -1)
   {
      xdg_screensaver_available = 0;
      RARCH_WARN("Failed to launch xdg-screensaver.\n");
   }
   else if (WEXITSTATUS(ret))
   {
      xdg_screensaver_available = 0;
      RARCH_WARN("Could not suspend screen saver.\n");
   }
}
