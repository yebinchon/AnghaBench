
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int kperf_timerc ;

unsigned int
kperf_timer_get_count(void)
{
 return kperf_timerc;
}
