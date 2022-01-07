
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ _mach_continuous_hwclock (int *) ;
 int _mach_continuous_time (int *,int *) ;

uint64_t
mach_continuous_time(void)
{
 uint64_t cont_time;
 if (_mach_continuous_hwclock(&cont_time) != KERN_SUCCESS)
  _mach_continuous_time(((void*)0), &cont_time);
 return cont_time;
}
