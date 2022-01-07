
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int width; } ;
struct TYPE_9__ {int width; int height; } ;


 int FB ;
 int MAXPLAYERS ;
 int NG_SPACINGX ;
 int NG_STATSX ;
 int NG_STATSY ;
 int SHORT (int ) ;
 int V_DrawPatch (int,int,int ,TYPE_1__*) ;
 scalar_t__ WI_SPACINGY ;
 int WI_drawAnimatedBack () ;
 int WI_drawLF () ;
 int WI_drawNum (int,int,int ,int) ;
 int WI_drawPercent (int,int,int ) ;
 int WI_slamBackground () ;
 int * cnt_frags ;
 int * cnt_items ;
 int * cnt_kills ;
 int * cnt_secret ;
 scalar_t__ dofrags ;
 TYPE_1__* frags ;
 TYPE_1__* items ;
 TYPE_1__* kills ;
 int me ;
 TYPE_1__** p ;
 TYPE_3__* percent ;
 int * playeringame ;
 TYPE_1__* secret ;
 TYPE_1__* star ;

void WI_drawNetgameStats(void)
{
    int i;
    int x;
    int y;
    int pwidth = SHORT(percent->width);

    WI_slamBackground();


    WI_drawAnimatedBack();

    WI_drawLF();


    V_DrawPatch(NG_STATSX+NG_SPACINGX-SHORT(kills->width),
  NG_STATSY, FB, kills);

    V_DrawPatch(NG_STATSX+2*NG_SPACINGX-SHORT(items->width),
  NG_STATSY, FB, items);

    V_DrawPatch(NG_STATSX+3*NG_SPACINGX-SHORT(secret->width),
  NG_STATSY, FB, secret);

    if (dofrags)
 V_DrawPatch(NG_STATSX+4*NG_SPACINGX-SHORT(frags->width),
      NG_STATSY, FB, frags);


    y = NG_STATSY + SHORT(kills->height);

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
 if (!playeringame[i])
     continue;

 x = NG_STATSX;
 V_DrawPatch(x-SHORT(p[i]->width), y, FB, p[i]);

 if (i == me)
     V_DrawPatch(x-SHORT(p[i]->width), y, FB, star);

 x += NG_SPACINGX;
 WI_drawPercent(x-pwidth, y+10, cnt_kills[i]); x += NG_SPACINGX;
 WI_drawPercent(x-pwidth, y+10, cnt_items[i]); x += NG_SPACINGX;
 WI_drawPercent(x-pwidth, y+10, cnt_secret[i]); x += NG_SPACINGX;

 if (dofrags)
     WI_drawNum(x, y+10, cnt_frags[i], -1);

 y += WI_SPACINGY;
    }

}
