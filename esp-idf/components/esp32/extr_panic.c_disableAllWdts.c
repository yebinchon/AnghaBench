
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMERG0 ;
 int TIMERG1 ;
 int timer_ll_wdt_set_enable (int *,int) ;
 int timer_ll_wdt_set_protect (int *,int) ;

__attribute__((used)) static inline void disableAllWdts(void)
{
    timer_ll_wdt_set_protect(&TIMERG0, 0);
    timer_ll_wdt_set_enable(&TIMERG0, 0);
    timer_ll_wdt_set_protect(&TIMERG0, 1);

    timer_ll_wdt_set_protect(&TIMERG1, 0);
    timer_ll_wdt_set_enable(&TIMERG1, 0);
    timer_ll_wdt_set_protect(&TIMERG1, 1);
}
