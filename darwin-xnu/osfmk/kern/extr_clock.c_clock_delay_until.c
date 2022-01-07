
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int _clock_delay_until_deadline (scalar_t__,scalar_t__) ;
 scalar_t__ mach_absolute_time () ;

void
clock_delay_until(
 uint64_t deadline)
{
 uint64_t now = mach_absolute_time();

 if (now >= deadline)
  return;

 _clock_delay_until_deadline(deadline - now, deadline);
}
