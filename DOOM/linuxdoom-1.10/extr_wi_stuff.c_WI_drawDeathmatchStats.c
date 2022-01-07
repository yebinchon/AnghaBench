
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int width; } ;
struct TYPE_9__ {int width; } ;


 int DM_KILLERSX ;
 int DM_KILLERSY ;
 int DM_MATRIXX ;
 int DM_MATRIXY ;
 int DM_SPACINGX ;
 int DM_TOTALSX ;
 int DM_VICTIMSX ;
 int DM_VICTIMSY ;
 int FB ;
 int MAXPLAYERS ;
 int SHORT (int ) ;
 int V_DrawPatch (int,int,int ,TYPE_1__*) ;
 int WI_SPACINGY ;
 int WI_drawAnimatedBack () ;
 int WI_drawLF () ;
 int WI_drawNum (int,int,int ,int) ;
 int WI_slamBackground () ;
 TYPE_1__* bstar ;
 int ** dm_frags ;
 int * dm_totals ;
 TYPE_1__* killers ;
 int me ;
 TYPE_5__** num ;
 TYPE_1__** p ;
 scalar_t__* playeringame ;
 TYPE_1__* star ;
 TYPE_1__* total ;
 TYPE_1__* victims ;

void WI_drawDeathmatchStats(void)
{

    int i;
    int j;
    int x;
    int y;
    int w;

    int lh;

    lh = WI_SPACINGY;

    WI_slamBackground();


    WI_drawAnimatedBack();
    WI_drawLF();


    V_DrawPatch(DM_TOTALSX-SHORT(total->width)/2,
  DM_MATRIXY-WI_SPACINGY+10,
  FB,
  total);

    V_DrawPatch(DM_KILLERSX, DM_KILLERSY, FB, killers);
    V_DrawPatch(DM_VICTIMSX, DM_VICTIMSY, FB, victims);


    x = DM_MATRIXX + DM_SPACINGX;
    y = DM_MATRIXY;

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
 if (playeringame[i])
 {
     V_DrawPatch(x-SHORT(p[i]->width)/2,
   DM_MATRIXY - WI_SPACINGY,
   FB,
   p[i]);

     V_DrawPatch(DM_MATRIXX-SHORT(p[i]->width)/2,
   y,
   FB,
   p[i]);

     if (i == me)
     {
  V_DrawPatch(x-SHORT(p[i]->width)/2,
       DM_MATRIXY - WI_SPACINGY,
       FB,
       bstar);

  V_DrawPatch(DM_MATRIXX-SHORT(p[i]->width)/2,
       y,
       FB,
       star);
     }
 }
 else
 {




 }
 x += DM_SPACINGX;
 y += WI_SPACINGY;
    }


    y = DM_MATRIXY+10;
    w = SHORT(num[0]->width);

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
 x = DM_MATRIXX + DM_SPACINGX;

 if (playeringame[i])
 {
     for (j=0 ; j<MAXPLAYERS ; j++)
     {
  if (playeringame[j])
      WI_drawNum(x+w, y, dm_frags[i][j], 2);

  x += DM_SPACINGX;
     }
     WI_drawNum(DM_TOTALSX+w, y, dm_totals[i], 2);
 }
 y += WI_SPACINGY;
    }
}
