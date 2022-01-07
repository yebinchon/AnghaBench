
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int SCHED ;


 int NSEC_PER_SEC ;
 int clock_interval_to_absolutetime_interval (int,int ,int *) ;
 int sched_one_second_interval ;
 int sched_realtime_timebase_init () ;

void
sched_timebase_init(void)
{
 uint64_t abstime;

 clock_interval_to_absolutetime_interval(1, NSEC_PER_SEC, &abstime);
 sched_one_second_interval = abstime;

 SCHED(timebase_init)();
 sched_realtime_timebase_init();
}
