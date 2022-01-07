
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int boolean ;
struct TYPE_4__ {int skills; int sitems; int ssecret; } ;
struct TYPE_3__ {int maxkills; int maxitems; int maxsecret; } ;


 int MAXPLAYERS ;
 int S_StartSound (int ,int ) ;
 scalar_t__ TICRATE ;
 int WI_fragSum (int) ;
 int WI_initNoState () ;
 int WI_initShowNextLoc () ;
 int WI_updateAnimatedBack () ;
 scalar_t__ acceleratestage ;
 int bcnt ;
 int* cnt_frags ;
 int* cnt_items ;
 int* cnt_kills ;
 scalar_t__ cnt_pause ;
 int* cnt_secret ;
 scalar_t__ commercial ;
 scalar_t__ dofrags ;
 scalar_t__ gamemode ;
 int ng_state ;
 int * playeringame ;
 TYPE_2__* plrs ;
 int sfx_barexp ;
 int sfx_pistol ;
 int sfx_pldeth ;
 int sfx_sgcock ;
 TYPE_1__* wbs ;

void WI_updateNetgameStats(void)
{

    int i;
    int fsum;

    boolean stillticking;

    WI_updateAnimatedBack();

    if (acceleratestage && ng_state != 10)
    {
 acceleratestage = 0;

 for (i=0 ; i<MAXPLAYERS ; i++)
 {
     if (!playeringame[i])
  continue;

     cnt_kills[i] = (plrs[i].skills * 100) / wbs->maxkills;
     cnt_items[i] = (plrs[i].sitems * 100) / wbs->maxitems;
     cnt_secret[i] = (plrs[i].ssecret * 100) / wbs->maxsecret;

     if (dofrags)
  cnt_frags[i] = WI_fragSum(i);
 }
 S_StartSound(0, sfx_barexp);
 ng_state = 10;
    }

    if (ng_state == 2)
    {
 if (!(bcnt&3))
     S_StartSound(0, sfx_pistol);

 stillticking = 0;

 for (i=0 ; i<MAXPLAYERS ; i++)
 {
     if (!playeringame[i])
  continue;

     cnt_kills[i] += 2;

     if (cnt_kills[i] >= (plrs[i].skills * 100) / wbs->maxkills)
  cnt_kills[i] = (plrs[i].skills * 100) / wbs->maxkills;
     else
  stillticking = 1;
 }

 if (!stillticking)
 {
     S_StartSound(0, sfx_barexp);
     ng_state++;
 }
    }
    else if (ng_state == 4)
    {
 if (!(bcnt&3))
     S_StartSound(0, sfx_pistol);

 stillticking = 0;

 for (i=0 ; i<MAXPLAYERS ; i++)
 {
     if (!playeringame[i])
  continue;

     cnt_items[i] += 2;
     if (cnt_items[i] >= (plrs[i].sitems * 100) / wbs->maxitems)
  cnt_items[i] = (plrs[i].sitems * 100) / wbs->maxitems;
     else
  stillticking = 1;
 }
 if (!stillticking)
 {
     S_StartSound(0, sfx_barexp);
     ng_state++;
 }
    }
    else if (ng_state == 6)
    {
 if (!(bcnt&3))
     S_StartSound(0, sfx_pistol);

 stillticking = 0;

 for (i=0 ; i<MAXPLAYERS ; i++)
 {
     if (!playeringame[i])
  continue;

     cnt_secret[i] += 2;

     if (cnt_secret[i] >= (plrs[i].ssecret * 100) / wbs->maxsecret)
  cnt_secret[i] = (plrs[i].ssecret * 100) / wbs->maxsecret;
     else
  stillticking = 1;
 }

 if (!stillticking)
 {
     S_StartSound(0, sfx_barexp);
     ng_state += 1 + 2*!dofrags;
 }
    }
    else if (ng_state == 8)
    {
 if (!(bcnt&3))
     S_StartSound(0, sfx_pistol);

 stillticking = 0;

 for (i=0 ; i<MAXPLAYERS ; i++)
 {
     if (!playeringame[i])
  continue;

     cnt_frags[i] += 1;

     if (cnt_frags[i] >= (fsum = WI_fragSum(i)))
  cnt_frags[i] = fsum;
     else
  stillticking = 1;
 }

 if (!stillticking)
 {
     S_StartSound(0, sfx_pldeth);
     ng_state++;
 }
    }
    else if (ng_state == 10)
    {
 if (acceleratestage)
 {
     S_StartSound(0, sfx_sgcock);
     if ( gamemode == commercial )
  WI_initNoState();
     else
  WI_initShowNextLoc();
 }
    }
    else if (ng_state & 1)
    {
 if (!--cnt_pause)
 {
     ng_state++;
     cnt_pause = TICRATE;
 }
    }
}
