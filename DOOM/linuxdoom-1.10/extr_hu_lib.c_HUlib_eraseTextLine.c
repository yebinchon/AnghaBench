
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int y; scalar_t__ needsupdate; TYPE_1__** f; } ;
typedef TYPE_2__ hu_textline_t ;
typedef int boolean ;
struct TYPE_4__ {int height; } ;


 int R_VideoErase (int,int) ;
 int SCREENWIDTH ;
 int SHORT (int ) ;
 int automapactive ;
 int viewheight ;
 int viewwidth ;
 int viewwindowx ;
 int viewwindowy ;

void HUlib_eraseTextLine(hu_textline_t* l)
{
    int lh;
    int y;
    int yoffset;
    static boolean lastautomapactive = 1;





    if (!automapactive &&
 viewwindowx && l->needsupdate)
    {
 lh = SHORT(l->f[0]->height) + 1;
 for (y=l->y,yoffset=y*SCREENWIDTH ; y<l->y+lh ; y++,yoffset+=SCREENWIDTH)
 {
     if (y < viewwindowy || y >= viewwindowy + viewheight)
  R_VideoErase(yoffset, SCREENWIDTH);
     else
     {
  R_VideoErase(yoffset, viewwindowx);
  R_VideoErase(yoffset + viewwindowx + viewwidth, viewwindowx);

     }
 }
    }

    lastautomapactive = automapactive;
    if (l->needsupdate) l->needsupdate--;

}
