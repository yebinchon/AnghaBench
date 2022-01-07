
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int __builtin_arm_wfe () ;
 scalar_t__ arm64_wfe_allowed () ;
 scalar_t__ mach_absolute_time () ;

void
machine_delay_until(uint64_t interval,
                    uint64_t deadline)
{
#pragma unused(interval)
 uint64_t now;

 do {
  now = mach_absolute_time();
 } while (now < deadline);
}
