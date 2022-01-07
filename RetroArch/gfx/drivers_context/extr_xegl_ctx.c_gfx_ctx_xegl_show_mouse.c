
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_x11_dpy ;
 int g_x11_win ;
 int x11_show_mouse (int ,int ,int) ;

__attribute__((used)) static void gfx_ctx_xegl_show_mouse(void *data, bool state)
{
   (void)data;
   x11_show_mouse(g_x11_dpy, g_x11_win, state);
}
