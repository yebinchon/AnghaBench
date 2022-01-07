
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int rtcPop; } ;
typedef TYPE_1__ cpu_data_t ;


 int EndOfAllTime ;
 int clock_timebase_init () ;
 TYPE_1__* getCpuDatap () ;
 int mach_absolute_time () ;
 int ml_init_lock_timeout () ;
 int timer_resync_deadlines () ;

int
rtclock_init(void)
{
 uint64_t abstime;
 cpu_data_t * cdp;

 clock_timebase_init();
 ml_init_lock_timeout();

 cdp = getCpuDatap();

 abstime = mach_absolute_time();
 cdp->rtcPop = EndOfAllTime;
 timer_resync_deadlines();

 return (1);
}
