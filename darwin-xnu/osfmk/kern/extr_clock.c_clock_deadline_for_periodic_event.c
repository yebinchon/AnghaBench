
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int assert (int) ;
 scalar_t__ mach_absolute_time () ;

void
clock_deadline_for_periodic_event(
 uint64_t interval,
 uint64_t abstime,
 uint64_t *deadline)
{
 assert(interval != 0);

 *deadline += interval;

 if (*deadline <= abstime) {
  *deadline = abstime + interval;
  abstime = mach_absolute_time();

  if (*deadline <= abstime)
   *deadline = abstime + interval;
 }
}
