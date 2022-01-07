
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int False ;
 scalar_t__ XInternAtom (int ,char*,int ) ;
 int XSetWMProtocols (int ,int ,scalar_t__*,int) ;
 int g_x11_dpy ;
 scalar_t__ g_x11_quit_atom ;
 int g_x11_win ;

void x11_install_quit_atom(void)
{
   g_x11_quit_atom = XInternAtom(g_x11_dpy,
         "WM_DELETE_WINDOW", False);
   if (g_x11_quit_atom)
      XSetWMProtocols(g_x11_dpy, g_x11_win, &g_x11_quit_atom, 1);
}
