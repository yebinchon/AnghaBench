
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XCloseDisplay (int *) ;
 int XDestroyWindow (int *,scalar_t__) ;
 int XFree (int *) ;
 int XFreeColormap (int *,scalar_t__) ;
 scalar_t__ cmap ;
 int * ctx ;
 int * dpy ;
 int glXDestroyContext (int *,int *) ;
 int * vi ;
 int * vis ;
 scalar_t__ wnd ;

void glewDestroyContext ()
{
  if (((void*)0) != dpy && ((void*)0) != ctx) glXDestroyContext(dpy, ctx);
  if (((void*)0) != dpy && 0 != wnd) XDestroyWindow(dpy, wnd);
  if (((void*)0) != dpy && 0 != cmap) XFreeColormap(dpy, cmap);
  if (((void*)0) != vis)
    XFree(vis);
  else if (((void*)0) != vi)
    XFree(vi);
  if (((void*)0) != dpy) XCloseDisplay(dpy);
}
