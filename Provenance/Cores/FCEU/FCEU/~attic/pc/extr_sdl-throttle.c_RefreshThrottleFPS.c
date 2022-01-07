
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FCEUI_GetDesiredFPS () ;
 int desiredfps ;
 int fps_scale ;
 int tfreq ;

void RefreshThrottleFPS(void)
{
       desiredfps=FCEUI_GetDesiredFPS()>>8;
       desiredfps=(desiredfps*fps_scale)>>8;
       tfreq=10000000;
       tfreq<<=16;
}
