
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xstuff {int (* pXFreePixmap ) (int *,int ) ;int (* pXCreatePixmapCursor ) (int *,int ,int ,int *,int *,int ,int ) ;int (* pXCreateBitmapFromData ) (int *,int ,char*,int,int) ;} ;
typedef int dummy ;
typedef int XColor ;
typedef int Window ;
typedef int Pixmap ;
typedef int Display ;
typedef int Cursor ;


 int memset (int *,int ,int) ;
 int stub1 (int *,int ,char*,int,int) ;
 int stub2 (int *,int ,int ,int *,int *,int ,int ) ;
 int stub3 (int *,int ) ;

__attribute__((used)) static Cursor transparent_cursor(struct xstuff *xf, Display *display, Window win)
{
 Cursor cursor;
 Pixmap pix;
 XColor dummy;
 char d = 0;

 memset(&dummy, 0, sizeof(dummy));
 pix = xf->pXCreateBitmapFromData(display, win, &d, 1, 1);
 cursor = xf->pXCreatePixmapCursor(display, pix, pix,
   &dummy, &dummy, 0, 0);
 xf->pXFreePixmap(display, pix);
 return cursor;
}
