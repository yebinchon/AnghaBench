
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 int clock_interval_to_absolutetime_interval (int ,int ,scalar_t__*) ;
 scalar_t__ mach_absolute_time () ;

void
clock_interval_to_deadline(
 uint32_t interval,
 uint32_t scale_factor,
 uint64_t *result)
{
 uint64_t abstime;

 clock_interval_to_absolutetime_interval(interval, scale_factor, &abstime);

 *result = mach_absolute_time() + abstime;
}
