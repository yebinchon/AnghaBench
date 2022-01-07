
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 int _clock_delay_until_deadline_with_leeway (scalar_t__,scalar_t__,scalar_t__) ;
 int clock_interval_to_absolutetime_interval (int ,int ,scalar_t__*) ;
 scalar_t__ mach_absolute_time () ;

void
delay_for_interval_with_leeway(
 uint32_t interval,
 uint32_t leeway,
 uint32_t scale_factor)
{
 uint64_t abstime_interval;
 uint64_t abstime_leeway;

 clock_interval_to_absolutetime_interval(interval, scale_factor, &abstime_interval);
 clock_interval_to_absolutetime_interval(leeway, scale_factor, &abstime_leeway);

 _clock_delay_until_deadline_with_leeway(abstime_interval, mach_absolute_time() + abstime_interval, abstime_leeway);
}
