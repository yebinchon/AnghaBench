
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int GetCurTime () ;
 int desiredfps ;
 int tfreq ;

void SpeedThrottle(void)
{
 static uint64 ttime,ltime=0;

 waiter:

 ttime=GetCurTime();

 if( (ttime-ltime) < (tfreq/desiredfps) )
  goto waiter;
 if( (ttime-ltime) >= (tfreq*4/desiredfps))
  ltime=ttime;
 else
  ltime+=tfreq/desiredfps;
}
