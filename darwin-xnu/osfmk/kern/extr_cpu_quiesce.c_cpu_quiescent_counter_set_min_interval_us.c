
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ CPU_CHECKIN_MIN_INTERVAL_MAX_US ;
 int NSEC_PER_USEC ;
 int clock_interval_to_absolutetime_interval (scalar_t__,int ,int *) ;
 int cpu_checkin_min_interval ;
 scalar_t__ cpu_checkin_min_interval_us ;

void
cpu_quiescent_counter_set_min_interval_us(uint32_t new_value_us)
{

 if (new_value_us > CPU_CHECKIN_MIN_INTERVAL_MAX_US)
  new_value_us = CPU_CHECKIN_MIN_INTERVAL_MAX_US;

 cpu_checkin_min_interval_us = new_value_us;

 uint64_t abstime = 0;
 clock_interval_to_absolutetime_interval(cpu_checkin_min_interval_us,
                                         NSEC_PER_USEC, &abstime);
 cpu_checkin_min_interval = abstime;
}
