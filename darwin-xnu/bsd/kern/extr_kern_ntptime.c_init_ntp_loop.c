
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int timer_call_func_t ;


 int NTP_LOOP_PERIOD_INTERVAL ;
 int nanoseconds_to_absolutetime (int ,scalar_t__*) ;
 scalar_t__ ntp_loop_active ;
 scalar_t__ ntp_loop_period ;
 int ntp_loop_update ;
 scalar_t__ ntp_loop_update_call ;
 int timer_call_setup (int *,int ,int *) ;

__attribute__((used)) static void
init_ntp_loop(void)
{
 uint64_t abstime;

 ntp_loop_active = 0;
 nanoseconds_to_absolutetime(NTP_LOOP_PERIOD_INTERVAL, &abstime);
 ntp_loop_period = (uint32_t)abstime;
 timer_call_setup(&ntp_loop_update, (timer_call_func_t)ntp_loop_update_call, ((void*)0));
}
