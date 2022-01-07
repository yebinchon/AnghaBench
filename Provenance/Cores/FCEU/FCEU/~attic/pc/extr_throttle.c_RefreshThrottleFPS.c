
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FCEUI_GetDesiredFPS () ;
 int desiredfps ;
 int tfreq ;

void RefreshThrottleFPS(void)
{
 desiredfps=FCEUI_GetDesiredFPS()>>8;
 tfreq=1000000;
 tfreq<<=16;
}
