
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Visual ;
typedef int Display ;


 int * XCreateImage (int *,int *,int,int ,int ,void*,int,int,int,int ) ;
 int XDestroyImage (int *) ;
 int XLockDisplay (int ) ;
 int XUnlockDisplay (int ) ;
 int ZPixmap ;
 void* calloc (int,int) ;
 int fprintf (int ,char*) ;
 int scr_h ;
 int scr_w ;
 int stderr ;
 int * ximage ;
 int xlib_display ;

__attribute__((used)) static void ximage_realloc(Display *display, Visual *visual)
{
 void *xlib_screen;

 XLockDisplay(xlib_display);

 if (ximage != ((void*)0))
  XDestroyImage(ximage);
 ximage = ((void*)0);

 xlib_screen = calloc(scr_w * scr_h, 4);
 if (xlib_screen != ((void*)0))
  ximage = XCreateImage(display, visual, 24, ZPixmap, 0,
    xlib_screen, scr_w, scr_h, 32, 0);
 if (ximage == ((void*)0))
  fprintf(stderr, "failed to alloc ximage\n");

 XUnlockDisplay(xlib_display);
}
