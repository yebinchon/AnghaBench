
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;


 int NSEC_PER_SEC ;
 scalar_t__ hz_tick_interval ;
 int nanoseconds_to_absolutetime (int,scalar_t__*) ;
 int sched_timebase_init () ;

void
clock_timebase_init(void)
{
 uint64_t abstime;

 nanoseconds_to_absolutetime(NSEC_PER_SEC / 100, &abstime);
 hz_tick_interval = (uint32_t)abstime;

 sched_timebase_init();
}
