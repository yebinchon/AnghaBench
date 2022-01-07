
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHOWNEXTLOCDELAY ;
 int ShowNextLoc ;
 int TICRATE ;
 int WI_initAnimatedBack () ;
 scalar_t__ acceleratestage ;
 int cnt ;
 int state ;

void WI_initShowNextLoc(void)
{
    state = ShowNextLoc;
    acceleratestage = 0;
    cnt = SHOWNEXTLOCDELAY * TICRATE;

    WI_initAnimatedBack();
}
