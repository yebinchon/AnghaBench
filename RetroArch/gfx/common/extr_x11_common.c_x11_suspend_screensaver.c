
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Window ;


 scalar_t__ dbus_suspend_screensaver (int) ;
 int x11_suspend_screensaver_xdg_screensaver (int ,int) ;

void x11_suspend_screensaver(Window wnd, bool enable)
{




    x11_suspend_screensaver_xdg_screensaver(wnd, enable);
}
