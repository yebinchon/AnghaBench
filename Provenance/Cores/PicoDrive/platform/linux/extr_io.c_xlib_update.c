
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Status ;


 int DefaultGC (int ,int ) ;
 int XLockDisplay (int ) ;
 scalar_t__ XPutImage (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int XUnlockDisplay (int ) ;
 int fprintf (int ,char*,scalar_t__) ;
 int g_screen_height ;
 int g_screen_width ;
 int stderr ;
 int ximage ;
 int xlib_display ;
 int xlib_window ;

__attribute__((used)) static void xlib_update(void)
{
 Status xstatus;

 XLockDisplay(xlib_display);

 xstatus = XPutImage(xlib_display, xlib_window, DefaultGC(xlib_display, 0), ximage,
  0, 0, 0, 0, g_screen_width, g_screen_height);
 if (xstatus != 0)
  fprintf(stderr, "XPutImage %d\n", xstatus);

 XUnlockDisplay(xlib_display);
}
