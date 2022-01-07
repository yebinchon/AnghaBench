
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPLAYERS ;
 int StatCount ;
 int TICRATE ;
 scalar_t__ WI_fragSum (int) ;
 int WI_initAnimatedBack () ;
 scalar_t__ acceleratestage ;
 scalar_t__* cnt_frags ;
 scalar_t__* cnt_items ;
 scalar_t__* cnt_kills ;
 int cnt_pause ;
 scalar_t__* cnt_secret ;
 int dofrags ;
 int ng_state ;
 int * playeringame ;
 int state ;

void WI_initNetgameStats(void)
{

    int i;

    state = StatCount;
    acceleratestage = 0;
    ng_state = 1;

    cnt_pause = TICRATE;

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
 if (!playeringame[i])
     continue;

 cnt_kills[i] = cnt_items[i] = cnt_secret[i] = cnt_frags[i] = 0;

 dofrags += WI_fragSum(i);
    }

    dofrags = !!dofrags;

    WI_initAnimatedBack();
}
