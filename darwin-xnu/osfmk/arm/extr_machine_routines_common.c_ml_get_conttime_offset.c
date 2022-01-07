
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ mach_absolutetime_asleep ;
 scalar_t__ rtclock_base_abstime ;

uint64_t
ml_get_conttime_offset(void)
{
 return (rtclock_base_abstime + mach_absolutetime_asleep);
}
