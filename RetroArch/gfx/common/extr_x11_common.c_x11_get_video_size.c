
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int width; unsigned int height; } ;
typedef TYPE_1__ XWindowAttributes ;
typedef int Display ;


 int DefaultScreen (int *) ;
 unsigned int DisplayHeight (int *,int) ;
 unsigned int DisplayWidth (int *,int) ;
 scalar_t__ None ;
 int XCloseDisplay (int *) ;
 int XGetWindowAttributes (int ,scalar_t__,TYPE_1__*) ;
 scalar_t__ XOpenDisplay (int *) ;
 int g_x11_dpy ;
 scalar_t__ g_x11_win ;

void x11_get_video_size(void *data, unsigned *width, unsigned *height)
{
   if (!g_x11_dpy || g_x11_win == None)
   {
      Display *dpy = (Display*)XOpenDisplay(((void*)0));
      *width = 0;
      *height = 0;

      if (dpy)
      {
         int screen = DefaultScreen(dpy);
         *width = DisplayWidth(dpy, screen);
         *height = DisplayHeight(dpy, screen);
         XCloseDisplay(dpy);
      }
   }
   else
   {
      XWindowAttributes target;
      XGetWindowAttributes(g_x11_dpy, g_x11_win, &target);

      *width = target.width;
      *height = target.height;
   }
}
