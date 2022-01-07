
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pixel; } ;
typedef TYPE_1__ XColor ;
typedef int Window ;
typedef scalar_t__ Pixmap ;
typedef int Display ;
typedef int Cursor ;
typedef int Colormap ;


 int DefaultColormap (int *,int ) ;
 int DefaultScreen (int *) ;
 scalar_t__ None ;
 int XAllocNamedColor (int *,int ,char*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ XCreateBitmapFromData (int *,int ,char*,int,int) ;
 int XCreatePixmapCursor (int *,scalar_t__,scalar_t__,TYPE_1__*,TYPE_1__*,int ,int ) ;
 int XDefineCursor (int *,int ,int ) ;
 int XFreeColors (int *,int ,int *,int,int ) ;
 int XFreeCursor (int *,int ) ;
 int XFreePixmap (int *,scalar_t__) ;

__attribute__((used)) static void x11_hide_mouse(Display *dpy, Window win)
{
   static char bm_no_data[] = {0, 0, 0, 0, 0, 0, 0, 0};
   Cursor no_ptr;
   Pixmap bm_no;
   XColor black, dummy;
   Colormap colormap = DefaultColormap(dpy, DefaultScreen(dpy));

   if (!XAllocNamedColor(dpy, colormap, "black", &black, &dummy))
      return;

   bm_no = XCreateBitmapFromData(dpy, win, bm_no_data, 8, 8);
   no_ptr = XCreatePixmapCursor(dpy, bm_no, bm_no, &black, &black, 0, 0);

   XDefineCursor(dpy, win, no_ptr);
   XFreeCursor(dpy, no_ptr);

   if (bm_no != None)
      XFreePixmap(dpy, bm_no);

   XFreeColors(dpy, colormap, &black.pixel, 1, 0);
}
