
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int function; } ;
typedef TYPE_1__ XGCValues ;
struct TYPE_7__ {int flags; scalar_t__ red; scalar_t__ pixel; } ;
typedef TYPE_2__ XColor ;
typedef int Window ;
typedef int Pixmap ;
typedef int GC ;
typedef int Display ;
typedef int Cursor ;


 int GCFunction ;
 int GXclear ;
 int XCreateGC (int *,int ,int ,TYPE_1__*) ;
 int XCreatePixmap (int *,int ,int,int,int) ;
 int XCreatePixmapCursor (int *,int ,int ,TYPE_2__*,TYPE_2__*,int ,int ) ;
 int XFillRectangle (int *,int ,int ,int ,int ,int,int) ;
 int XFreeGC (int *,int ) ;
 int XFreePixmap (int *,int ) ;

__attribute__((used)) static Cursor CreateNullCursor(Display *display, Window root)
{
  Pixmap cursormask;
  XGCValues xgc;
  GC gc;
  XColor dummycolour;
  Cursor cursor;

  cursormask = XCreatePixmap(display, root, 1, 1, 1 );
  xgc.function = GXclear;
  gc = XCreateGC(display, cursormask, GCFunction, &xgc);
  XFillRectangle(display, cursormask, gc, 0, 0, 1, 1);
  dummycolour.pixel = 0;
  dummycolour.red = 0;
  dummycolour.flags = 04;
  cursor = XCreatePixmapCursor(display, cursormask, cursormask,
                               &dummycolour,&dummycolour, 0,0);
  XFreePixmap(display,cursormask);
  XFreeGC(display,gc);
  return cursor;
}
