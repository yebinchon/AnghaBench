
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Window ;
typedef int Display ;


 int x11_set_window_class (int *,int ) ;
 int x11_set_window_pid (int *,int ) ;

void x11_set_window_attr(Display *dpy, Window win)
{
   x11_set_window_class(dpy, win);
   x11_set_window_pid(dpy, win);
}
