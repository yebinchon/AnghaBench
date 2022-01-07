
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int opacity; } ;
typedef TYPE_1__ dispserv_x11_t ;
typedef int Atom ;


 int False ;
 int PropModeReplace ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char const*,int) ;
 int XDeleteProperty (int ,int ,int ) ;
 int XInternAtom (int ,char*,int ) ;
 int g_x11_dpy ;
 int g_x11_win ;

__attribute__((used)) static bool x11_display_server_set_window_opacity(void *data, unsigned opacity)
{
   dispserv_x11_t *serv = (dispserv_x11_t*)data;
   Atom net_wm_opacity = XInternAtom(g_x11_dpy, "_NET_WM_WINDOW_OPACITY", False);
   Atom cardinal = XInternAtom(g_x11_dpy, "CARDINAL", False);

   serv->opacity = opacity;

   opacity = opacity * ((unsigned)-1 / 100.0);

   if (opacity == (unsigned)-1)
      XDeleteProperty(g_x11_dpy, g_x11_win, net_wm_opacity);
   else
      XChangeProperty(g_x11_dpy, g_x11_win, net_wm_opacity, cardinal,
            32, PropModeReplace, (const unsigned char*)&opacity, 1);

   return 1;
}
