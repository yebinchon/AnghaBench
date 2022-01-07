
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int int64 ;


 int SDL_Delay (int) ;
 int SDL_GetTicks () ;
 int desiredfps ;
 int tfreq ;

void SpeedThrottle(void)
{
 static uint64 ttime,ltime=0;

 waiter:

 ttime=SDL_GetTicks();
 ttime*=10000;

 if( (ttime-ltime) < (tfreq/desiredfps) )
 {
  int64 delay;
  delay=(tfreq/desiredfps)-(ttime-ltime);
  if(delay>0)
   SDL_Delay(delay/10000);


  goto waiter;
 }
 if( (ttime-ltime) >= (tfreq*4/desiredfps))
  ltime=ttime;
 else
  ltime+=tfreq/desiredfps;
}
