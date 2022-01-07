
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_WorldDone () ;
 int WI_End () ;
 int WI_updateAnimatedBack () ;
 int cnt ;

void WI_updateNoState(void) {

    WI_updateAnimatedBack();

    if (!--cnt)
    {
 WI_End();
 G_WorldDone();
    }

}
