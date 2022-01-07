
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int height; } ;
struct TYPE_3__ {int epsd; } ;


 int FB ;
 int SCREENWIDTH ;
 int SHORT (int ) ;
 scalar_t__ SP_STATSX ;
 scalar_t__ SP_STATSY ;
 scalar_t__ SP_TIMEX ;
 scalar_t__ SP_TIMEY ;
 int V_DrawPatch (scalar_t__,scalar_t__,int ,int ) ;
 int WI_drawAnimatedBack () ;
 int WI_drawLF () ;
 int WI_drawPercent (scalar_t__,scalar_t__,int ) ;
 int WI_drawTime (scalar_t__,scalar_t__,int ) ;
 int WI_slamBackground () ;
 int * cnt_items ;
 int * cnt_kills ;
 int cnt_par ;
 int * cnt_secret ;
 int cnt_time ;
 int items ;
 int kills ;
 TYPE_2__** num ;
 int par ;
 int sp_secret ;
 int time ;
 TYPE_1__* wbs ;

void WI_drawStats(void)
{

    int lh;

    lh = (3*SHORT(num[0]->height))/2;

    WI_slamBackground();


    WI_drawAnimatedBack();

    WI_drawLF();

    V_DrawPatch(SP_STATSX, SP_STATSY, FB, kills);
    WI_drawPercent(SCREENWIDTH - SP_STATSX, SP_STATSY, cnt_kills[0]);

    V_DrawPatch(SP_STATSX, SP_STATSY+lh, FB, items);
    WI_drawPercent(SCREENWIDTH - SP_STATSX, SP_STATSY+lh, cnt_items[0]);

    V_DrawPatch(SP_STATSX, SP_STATSY+2*lh, FB, sp_secret);
    WI_drawPercent(SCREENWIDTH - SP_STATSX, SP_STATSY+2*lh, cnt_secret[0]);

    V_DrawPatch(SP_TIMEX, SP_TIMEY, FB, time);
    WI_drawTime(SCREENWIDTH/2 - SP_TIMEX, SP_TIMEY, cnt_time);

    if (wbs->epsd < 3)
    {
 V_DrawPatch(SCREENWIDTH/2 + SP_TIMEX, SP_TIMEY, FB, par);
 WI_drawTime(SCREENWIDTH - SP_TIMEX, SP_TIMEY, cnt_par);
    }

}
