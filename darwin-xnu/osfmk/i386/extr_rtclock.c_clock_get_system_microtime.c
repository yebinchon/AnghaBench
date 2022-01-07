
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int clock_usec_t ;
typedef int clock_sec_t ;


 int _absolutetime_to_microtime (int ,int *,int *) ;
 int rtc_nanotime_read () ;

void
clock_get_system_microtime(
 clock_sec_t *secs,
 clock_usec_t *microsecs)
{
 uint64_t now = rtc_nanotime_read();

 _absolutetime_to_microtime(now, secs, microsecs);
}
