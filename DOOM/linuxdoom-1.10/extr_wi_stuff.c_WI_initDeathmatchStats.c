
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPLAYERS ;
 int StatCount ;
 int TICRATE ;
 int WI_initAnimatedBack () ;
 scalar_t__ acceleratestage ;
 int cnt_pause ;
 scalar_t__** dm_frags ;
 int dm_state ;
 scalar_t__* dm_totals ;
 scalar_t__* playeringame ;
 int state ;

void WI_initDeathmatchStats(void)
{

    int i;
    int j;

    state = StatCount;
    acceleratestage = 0;
    dm_state = 1;

    cnt_pause = TICRATE;

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
 if (playeringame[i])
 {
     for (j=0 ; j<MAXPLAYERS ; j++)
  if (playeringame[j])
      dm_frags[i][j] = 0;

     dm_totals[i] = 0;
 }
    }

    WI_initAnimatedBack();
}
