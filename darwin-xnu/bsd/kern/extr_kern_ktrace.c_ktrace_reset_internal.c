
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int KTRACE_KDEBUG ;
 int KTRACE_KPERF ;
 scalar_t__ KTRACE_STATE_BG ;
 scalar_t__ KTRACE_STATE_FG ;
 scalar_t__ KTRACE_STATE_OFF ;
 int kdebug_reset () ;
 int kperf_reset () ;
 int ktrace_active_mask ;
 int ktrace_keep_ownership_on_reset ;
 int ktrace_promote_background () ;
 int ktrace_release_ownership () ;
 scalar_t__ ktrace_state ;
 int should_notify_on_init ;

__attribute__((used)) static void
ktrace_reset_internal(uint32_t reset_mask)
{
 if (!ktrace_keep_ownership_on_reset) {
  ktrace_active_mask &= ~reset_mask;
 }

 if (reset_mask & KTRACE_KPERF) {
  kperf_reset();
 }
 if (reset_mask & KTRACE_KDEBUG) {
  kdebug_reset();
 }

 if (ktrace_active_mask == 0) {
  if (ktrace_state == KTRACE_STATE_FG) {

   ktrace_promote_background();
  } else if (ktrace_state == KTRACE_STATE_BG) {

   should_notify_on_init = 1;
   ktrace_release_ownership();
   ktrace_state = KTRACE_STATE_OFF;
  }
 }
}
