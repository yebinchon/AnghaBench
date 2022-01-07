
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct knote {scalar_t__* kn_ext; int kn_sfflags; } ;


 int NOTE_MACH_CONTINUOUS_TIME ;
 scalar_t__ mach_absolute_time () ;
 scalar_t__ mach_continuous_time () ;

__attribute__((used)) static bool
filt_timer_is_ready(struct knote *kn)
{
 uint64_t now, deadline = kn->kn_ext[0];

 if (deadline == 0) {
  return 1;
 }

 if (kn->kn_sfflags & NOTE_MACH_CONTINUOUS_TIME) {
  now = mach_continuous_time();
 } else {
  now = mach_absolute_time();
 }
 return deadline <= now;
}
