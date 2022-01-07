
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Display ;


 int DefaultScreen (int *) ;
 int XF86VidModeSetViewPort (int *,int ,int ,int ) ;
 int XF86VidModeSwitchToMode (int *,int ,int *) ;
 int desktop_mode ;

void x11_exit_fullscreen(Display *dpy)
{
   XF86VidModeSwitchToMode(dpy, DefaultScreen(dpy), &desktop_mode);
   XF86VidModeSetViewPort(dpy, DefaultScreen(dpy), 0, 0);
}
