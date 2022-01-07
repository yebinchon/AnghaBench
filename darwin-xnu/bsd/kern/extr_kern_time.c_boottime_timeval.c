
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
typedef int clock_usec_t ;
typedef int clock_sec_t ;


 int clock_get_boottime_microtime (int *,int *) ;

void
boottime_timeval(struct timeval *tv)
{
 clock_sec_t secs;
 clock_usec_t microsecs;

 clock_get_boottime_microtime(&secs, &microsecs);

 tv->tv_sec = secs;
 tv->tv_usec = microsecs;
}
