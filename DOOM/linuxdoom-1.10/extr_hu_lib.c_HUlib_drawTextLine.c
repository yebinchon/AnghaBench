
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int len; unsigned char sc; TYPE_2__** f; int y; int * l; } ;
typedef TYPE_1__ hu_textline_t ;
typedef scalar_t__ boolean ;
struct TYPE_5__ {int width; } ;


 int FG ;
 int SCREENWIDTH ;
 int SHORT (int ) ;
 int V_DrawPatchDirect (int,int ,int ,TYPE_2__*) ;
 unsigned char toupper (int ) ;

void
HUlib_drawTextLine
( hu_textline_t* l,
  boolean drawcursor )
{

    int i;
    int w;
    int x;
    unsigned char c;


    x = l->x;
    for (i=0;i<l->len;i++)
    {
 c = toupper(l->l[i]);
 if (c != ' '
     && c >= l->sc
     && c <= '_')
 {
     w = SHORT(l->f[c - l->sc]->width);
     if (x+w > SCREENWIDTH)
  break;
     V_DrawPatchDirect(x, l->y, FG, l->f[c - l->sc]);
     x += w;
 }
 else
 {
     x += 4;
     if (x >= SCREENWIDTH)
  break;
 }
    }


    if (drawcursor
 && x + SHORT(l->f['_' - l->sc]->width) <= SCREENWIDTH)
    {
 V_DrawPatchDirect(x, l->y, FG, l->f['_' - l->sc]);
    }
}
