
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean ;
struct TYPE_2__ {int* frags; } ;


 int MAXPLAYERS ;
 int S_StartSound (int ,int ) ;
 scalar_t__ TICRATE ;
 int WI_fragSum (int) ;
 int WI_initNoState () ;
 int WI_initShowNextLoc () ;
 int WI_updateAnimatedBack () ;
 scalar_t__ acceleratestage ;
 int bcnt ;
 scalar_t__ cnt_pause ;
 scalar_t__ commercial ;
 int** dm_frags ;
 int dm_state ;
 int* dm_totals ;
 scalar_t__ gamemode ;
 scalar_t__* playeringame ;
 TYPE_1__* plrs ;
 int sfx_barexp ;
 int sfx_pistol ;
 int sfx_slop ;

void WI_updateDeathmatchStats(void)
{

    int i;
    int j;

    boolean stillticking;

    WI_updateAnimatedBack();

    if (acceleratestage && dm_state != 4)
    {
 acceleratestage = 0;

 for (i=0 ; i<MAXPLAYERS ; i++)
 {
     if (playeringame[i])
     {
  for (j=0 ; j<MAXPLAYERS ; j++)
      if (playeringame[j])
   dm_frags[i][j] = plrs[i].frags[j];

  dm_totals[i] = WI_fragSum(i);
     }
 }


 S_StartSound(0, sfx_barexp);
 dm_state = 4;
    }


    if (dm_state == 2)
    {
 if (!(bcnt&3))
     S_StartSound(0, sfx_pistol);

 stillticking = 0;

 for (i=0 ; i<MAXPLAYERS ; i++)
 {
     if (playeringame[i])
     {
  for (j=0 ; j<MAXPLAYERS ; j++)
  {
      if (playeringame[j]
   && dm_frags[i][j] != plrs[i].frags[j])
      {
   if (plrs[i].frags[j] < 0)
       dm_frags[i][j]--;
   else
       dm_frags[i][j]++;

   if (dm_frags[i][j] > 99)
       dm_frags[i][j] = 99;

   if (dm_frags[i][j] < -99)
       dm_frags[i][j] = -99;

   stillticking = 1;
      }
  }
  dm_totals[i] = WI_fragSum(i);

  if (dm_totals[i] > 99)
      dm_totals[i] = 99;

  if (dm_totals[i] < -99)
      dm_totals[i] = -99;
     }

 }
 if (!stillticking)
 {
     S_StartSound(0, sfx_barexp);
     dm_state++;
 }

    }
    else if (dm_state == 4)
    {
 if (acceleratestage)
 {
     S_StartSound(0, sfx_slop);

     if ( gamemode == commercial)
  WI_initNoState();
     else
  WI_initShowNextLoc();
 }
    }
    else if (dm_state & 1)
    {
 if (!--cnt_pause)
 {
     dm_state++;
     cnt_pause = TICRATE;
 }
    }
}
