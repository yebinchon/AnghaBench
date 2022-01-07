
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_SET_BIT (int ,int ) ;
 int RTC_CNTL_WDTFEED_REG ;
 int RTC_CNTL_WDT_FEED ;
 int rtc_wdt_get_protect_status () ;
 int rtc_wdt_protect_off () ;
 int rtc_wdt_protect_on () ;

void rtc_wdt_feed(void)
{
    bool protect = rtc_wdt_get_protect_status();
    if (protect) {
        rtc_wdt_protect_off();
    }
    REG_SET_BIT(RTC_CNTL_WDTFEED_REG, RTC_CNTL_WDT_FEED);
    if (protect) {
        rtc_wdt_protect_on();
    }
}
