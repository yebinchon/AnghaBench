
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ volatile uint64_t ;


 scalar_t__ volatile _mach_continuous_time_base () ;
 scalar_t__ volatile mach_approximate_time () ;

uint64_t
mach_continuous_approximate_time(void)
{




 volatile register uint64_t time_base = _mach_continuous_time_base();
 return time_base + mach_approximate_time();
}
