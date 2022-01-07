
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef int pal_rtc_nanotime_t ;


 int _rtc_nanotime_adjust (unsigned long long,int *) ;
 int assert (int) ;
 int ml_get_interrupts_enabled () ;
 int pal_rtc_nanotime_info ;
 int rtc_nanotime_set_commpage (int *) ;

void
rtc_clock_adjust(uint64_t tsc_base_delta)
{
    pal_rtc_nanotime_t *rntp = &pal_rtc_nanotime_info;

    assert(!ml_get_interrupts_enabled());
    assert(tsc_base_delta < 100ULL);
    _rtc_nanotime_adjust(tsc_base_delta, rntp);
    rtc_nanotime_set_commpage(rntp);
}
