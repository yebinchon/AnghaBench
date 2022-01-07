
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tv1; int ts1; int clock_id; int ft0; } ;
typedef TYPE_1__ timedelta_t ;


 int GetSystemTimeAsFileTime (int *) ;
 int clock_gettime (int ,int *) ;
 int gettimeofday (int *,int *) ;

void
timer_stop(timedelta_t *timer)
{






 gettimeofday(&timer->tv1, ((void*)0));

}
