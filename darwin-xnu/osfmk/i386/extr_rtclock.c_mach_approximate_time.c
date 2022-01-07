
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int rtc_nanotime_read () ;

uint64_t
mach_approximate_time(void)
{
 return rtc_nanotime_read();
}
