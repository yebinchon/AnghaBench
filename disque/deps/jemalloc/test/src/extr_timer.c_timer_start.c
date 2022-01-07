
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tv0; int ts0; int clock_id; int ft0; } ;
typedef TYPE_1__ timedelta_t ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 int GetSystemTimeAsFileTime (int *) ;
 int _SC_MONOTONIC_CLOCK ;
 int clock_gettime (int ,int *) ;
 int gettimeofday (int *,int *) ;
 scalar_t__ sysconf (int ) ;

void
timer_start(timedelta_t *timer)
{
 gettimeofday(&timer->tv0, ((void*)0));

}
