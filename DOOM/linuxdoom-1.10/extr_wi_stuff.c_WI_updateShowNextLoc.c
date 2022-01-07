
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WI_initNoState () ;
 int WI_updateAnimatedBack () ;
 scalar_t__ acceleratestage ;
 int cnt ;
 int snl_pointeron ;

void WI_updateShowNextLoc(void)
{
    WI_updateAnimatedBack();

    if (!--cnt || acceleratestage)
 WI_initNoState();
    else
 snl_pointeron = (cnt & 31) < 20;
}
