
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NTP_ASSERT_LOCKED () ;
 int TIMER_CALL_SYS_CRITICAL ;
 int clock_deadline_for_periodic_event (int ,int ,int *) ;
 int mach_absolute_time () ;
 scalar_t__ ntp_loop_active ;
 int ntp_loop_deadline ;
 int ntp_loop_period ;
 int ntp_loop_update ;
 int timer_call_enter (int *,int ,int ) ;
 scalar_t__ updated ;

__attribute__((used)) static void
refresh_ntp_loop(void)
{

 NTP_ASSERT_LOCKED();
 if (--ntp_loop_active == 0) {




  if (updated) {
   clock_deadline_for_periodic_event(ntp_loop_period, mach_absolute_time(), &ntp_loop_deadline);

   if (!timer_call_enter(&ntp_loop_update, ntp_loop_deadline, TIMER_CALL_SYS_CRITICAL))
     ntp_loop_active++;
  }
 }

}
