
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ None ;
 int XDestroyWindow (int ,scalar_t__) ;
 int XUnmapWindow (int ,scalar_t__) ;
 int dbus_close_connection () ;
 int dbus_screensaver_uninhibit () ;
 int g_x11_dpy ;
 scalar_t__ g_x11_win ;

void x11_window_destroy(bool fullscreen)
{
   if (g_x11_win)
      XUnmapWindow(g_x11_dpy, g_x11_win);
   if (!fullscreen)
      XDestroyWindow(g_x11_dpy, g_x11_win);
   g_x11_win = None;





}
