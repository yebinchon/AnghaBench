
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mach_timebase_info_t ;


 int rtclock_timebase_const ;

void
clock_timebase_info(mach_timebase_info_t info)
{
 *info = rtclock_timebase_const;
}
