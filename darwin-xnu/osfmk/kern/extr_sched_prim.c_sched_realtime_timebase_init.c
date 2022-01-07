
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 int NSEC_PER_USEC ;
 int assert (int) ;
 int clock_interval_to_absolutetime_interval (int,int,int*) ;
 scalar_t__ max_rt_quantum ;
 scalar_t__ min_rt_quantum ;

__attribute__((used)) static void
sched_realtime_timebase_init(void)
{
 uint64_t abstime;


 clock_interval_to_absolutetime_interval(50, NSEC_PER_USEC, &abstime);
 assert((abstime >> 32) == 0 && (uint32_t)abstime != 0);
 min_rt_quantum = (uint32_t)abstime;


 clock_interval_to_absolutetime_interval(
  50, 1000*NSEC_PER_USEC, &abstime);
 assert((abstime >> 32) == 0 && (uint32_t)abstime != 0);
 max_rt_quantum = (uint32_t)abstime;

}
