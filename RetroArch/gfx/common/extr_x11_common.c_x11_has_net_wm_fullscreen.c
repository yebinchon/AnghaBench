
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Display ;


 int False ;
 int XA_NET_WM_STATE_FULLSCREEN ;
 int XInternAtom (int *,char*,int ) ;
 int x11_check_atom_supported (int *,int ) ;

bool x11_has_net_wm_fullscreen(Display *dpy)
{
   XA_NET_WM_STATE_FULLSCREEN = XInternAtom(dpy, "_NET_WM_STATE_FULLSCREEN", False);

   return x11_check_atom_supported(dpy, XA_NET_WM_STATE_FULLSCREEN);
}
