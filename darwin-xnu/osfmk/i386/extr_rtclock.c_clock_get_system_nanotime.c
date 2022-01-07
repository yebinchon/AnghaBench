
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int clock_sec_t ;
typedef int clock_nsec_t ;


 int _absolutetime_to_nanotime (int ,int *,int *) ;
 int rtc_nanotime_read () ;

void
clock_get_system_nanotime(
 clock_sec_t *secs,
 clock_nsec_t *nanosecs)
{
 uint64_t now = rtc_nanotime_read();

 _absolutetime_to_nanotime(now, secs, nanosecs);
}
