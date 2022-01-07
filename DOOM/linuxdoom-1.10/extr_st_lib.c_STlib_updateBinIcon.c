
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ oldval; scalar_t__* val; int x; int y; TYPE_2__* p; scalar_t__* on; } ;
typedef TYPE_1__ st_binicon_t ;
typedef scalar_t__ boolean ;
struct TYPE_5__ {int height; int width; int topoffset; int leftoffset; } ;


 int BG ;
 int FG ;
 int I_Error (char*) ;
 int SHORT (int ) ;
 int ST_Y ;
 int V_CopyRect (int,int,int ,int,int,int,int,int ) ;
 int V_DrawPatch (int,int,int ,TYPE_2__*) ;

void
STlib_updateBinIcon
( st_binicon_t* bi,
  boolean refresh )
{
    int x;
    int y;
    int w;
    int h;

    if (*bi->on
 && (bi->oldval != *bi->val || refresh))
    {
 x = bi->x - SHORT(bi->p->leftoffset);
 y = bi->y - SHORT(bi->p->topoffset);
 w = SHORT(bi->p->width);
 h = SHORT(bi->p->height);

 if (y - ST_Y < 0)
     I_Error("updateBinIcon: y - ST_Y < 0");

 if (*bi->val)
     V_DrawPatch(bi->x, bi->y, FG, bi->p);
 else
     V_CopyRect(x, y-ST_Y, BG, w, h, x, y, FG);

 bi->oldval = *bi->val;
    }

}
