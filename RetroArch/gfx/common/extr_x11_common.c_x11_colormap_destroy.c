
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ None ;
 int XFreeColormap (int ,scalar_t__) ;
 scalar_t__ g_x11_cmap ;
 int g_x11_dpy ;

void x11_colormap_destroy(void)
{
   if (!g_x11_cmap)
      return;

   XFreeColormap(g_x11_dpy, g_x11_cmap);
   g_x11_cmap = None;
}
