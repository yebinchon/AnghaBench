
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int StatCount ;
 int TICRATE ;
 int WI_initAnimatedBack () ;
 scalar_t__ acceleratestage ;
 int* cnt_items ;
 int* cnt_kills ;
 int cnt_par ;
 int cnt_pause ;
 int* cnt_secret ;
 int cnt_time ;
 int sp_state ;
 int state ;

void WI_initStats(void)
{
    state = StatCount;
    acceleratestage = 0;
    sp_state = 1;
    cnt_kills[0] = cnt_items[0] = cnt_secret[0] = -1;
    cnt_time = cnt_par = -1;
    cnt_pause = TICRATE;

    WI_initAnimatedBack();
}
