
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ KTRACE_STATE_OFF ;
 int assert (int) ;
 scalar_t__ ktrace_active_mask ;
 int ktrace_assert_lock_held () ;
 int ktrace_keep_ownership_on_reset ;
 int ktrace_reset_internal (int ) ;
 scalar_t__ ktrace_state ;

void
ktrace_reset(uint32_t reset_mask)
{
 ktrace_assert_lock_held();

 if (ktrace_active_mask == 0) {
  if (!ktrace_keep_ownership_on_reset) {
   assert(ktrace_state == KTRACE_STATE_OFF);
  }
  return;
 }

 ktrace_reset_internal(reset_mask);
}
