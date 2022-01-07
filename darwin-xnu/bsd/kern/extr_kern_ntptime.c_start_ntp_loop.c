
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int NTP_LOCK (int ) ;
 int NTP_UNLOCK (int ) ;
 int TIMER_CALL_SYS_CRITICAL ;
 scalar_t__ mach_absolute_time () ;
 int ntp_loop_active ;
 scalar_t__ ntp_loop_deadline ;
 scalar_t__ ntp_loop_period ;
 int ntp_loop_update ;
 int timer_call_enter (int *,scalar_t__,int ) ;

__attribute__((used)) static void
start_ntp_loop(void)
{
 boolean_t enable;

 NTP_LOCK(enable);

 ntp_loop_deadline = mach_absolute_time() + ntp_loop_period;

 if (!timer_call_enter(&ntp_loop_update, ntp_loop_deadline, TIMER_CALL_SYS_CRITICAL)) {
   ntp_loop_active++;
 }

 NTP_UNLOCK(enable);
}
