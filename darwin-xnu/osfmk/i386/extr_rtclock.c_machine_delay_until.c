
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int cpu_pause () ;
 scalar_t__ mach_absolute_time () ;

void
machine_delay_until(
 uint64_t interval,
 uint64_t deadline)
{
 (void)interval;
 while (mach_absolute_time() < deadline) {
  cpu_pause();
 }
}
