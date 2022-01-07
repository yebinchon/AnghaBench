
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int tv_usec; int tv_sec; } ;
typedef int clock_usec_t ;
typedef int clock_sec_t ;


 int clock_get_calendar_absolute_and_microtime (int *,int *,int *) ;

void
microtime_with_abstime(
 struct timeval *tvp, uint64_t *abstime)
{
 clock_sec_t tv_sec;
 clock_usec_t tv_usec;

 clock_get_calendar_absolute_and_microtime(&tv_sec, &tv_usec, abstime);

 tvp->tv_sec = tv_sec;
 tvp->tv_usec = tv_usec;
}
