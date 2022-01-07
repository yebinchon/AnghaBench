
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



uint64_t ml_get_hwclock()
{
 uint64_t timebase;




 __asm__ volatile("isb\n"
    "mrs %0, CNTPCT_EL0"
    : "=r"(timebase));

 return timebase;
}
