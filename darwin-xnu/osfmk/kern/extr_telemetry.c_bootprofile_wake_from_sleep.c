
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TIMER_CALL_SYS_NORMAL ;
 scalar_t__ bootprofile_interval_abs ;
 scalar_t__ bootprofile_next_deadline ;
 int bootprofile_timer_call_entry ;
 scalar_t__ bootprofile_type ;
 scalar_t__ kBootProfileStartTimerAtWake ;
 scalar_t__ mach_absolute_time () ;
 int timer_call_enter_with_leeway (int *,int *,scalar_t__,int ,int ,int ) ;

void
bootprofile_wake_from_sleep(void)
{
 if (bootprofile_type == kBootProfileStartTimerAtWake) {
  bootprofile_next_deadline = mach_absolute_time() + bootprofile_interval_abs;
  timer_call_enter_with_leeway(&bootprofile_timer_call_entry,
          ((void*)0),
          bootprofile_next_deadline,
          0,
          TIMER_CALL_SYS_NORMAL,
          FALSE);
 }
}
