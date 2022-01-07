
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ XOpenDisplay (int *) ;
 int dbus_ensure_connection () ;
 int frontend_driver_destroy_signal_handler_state () ;
 scalar_t__ g_x11_dpy ;

bool x11_connect(void)
{
   frontend_driver_destroy_signal_handler_state();



   if (!g_x11_dpy)
   {
      g_x11_dpy = XOpenDisplay(((void*)0));
      if (!g_x11_dpy)
         return 0;
   }





   return 1;
}
