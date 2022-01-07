
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Window ;


 scalar_t__ xdg_screensaver_available ;
 int xdg_screensaver_inhibit (int ) ;

void x11_suspend_screensaver_xdg_screensaver(Window wnd, bool enable)
{

   if (!enable)
      return;

   if (xdg_screensaver_available)
      xdg_screensaver_inhibit(wnd);
}
