
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int NTP_LOCK (int ) ;
 int NTP_UNLOCK (int ) ;
 int clock_update_calendar () ;
 int refresh_ntp_loop () ;

__attribute__((used)) static void
ntp_loop_update_call(void)
{
 boolean_t enable;

 NTP_LOCK(enable);





 clock_update_calendar();

 refresh_ntp_loop();

 NTP_UNLOCK(enable);
}
