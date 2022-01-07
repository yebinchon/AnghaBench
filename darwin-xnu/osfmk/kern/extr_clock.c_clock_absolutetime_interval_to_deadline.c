
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ mach_absolute_time () ;

void
clock_absolutetime_interval_to_deadline(
 uint64_t abstime,
 uint64_t *result)
{
 *result = mach_absolute_time() + abstime;
}
