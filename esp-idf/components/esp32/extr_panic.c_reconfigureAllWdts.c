
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TG0_WDT_TICK_US ;
 int TIMERG0 ;
 int TIMERG1 ;
 int TIMER_WDT_RESET_SYSTEM ;
 int timer_ll_wdt_feed (int *) ;
 int timer_ll_wdt_init (int *) ;
 int timer_ll_wdt_set_enable (int *,int) ;
 int timer_ll_wdt_set_protect (int *,int) ;
 int timer_ll_wdt_set_tick (int *,int) ;
 int timer_ll_wdt_set_timeout (int *,int ,int) ;
 int timer_ll_wdt_set_timeout_behavior (int *,int ,int ) ;

__attribute__((used)) static void reconfigureAllWdts(void)
{
    timer_ll_wdt_set_protect(&TIMERG0, 0);
    timer_ll_wdt_feed(&TIMERG0);
    timer_ll_wdt_init(&TIMERG0);
    timer_ll_wdt_set_tick(&TIMERG0, TG0_WDT_TICK_US);

    timer_ll_wdt_set_timeout_behavior(&TIMERG0, 0, TIMER_WDT_RESET_SYSTEM);

    timer_ll_wdt_set_timeout(&TIMERG0, 0, 1000*1000/TG0_WDT_TICK_US);
    timer_ll_wdt_set_enable(&TIMERG0, 1);
    timer_ll_wdt_set_protect(&TIMERG0, 1);


    timer_ll_wdt_set_protect(&TIMERG1, 0);
    timer_ll_wdt_set_enable(&TIMERG1, 0);
    timer_ll_wdt_set_protect(&TIMERG1, 1);
}
