
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_SET_BIT (int ,int ) ;
 int RTC_CNTL_WDTCONFIG0_REG ;
 int RTC_CNTL_WDTFEED_REG ;
 int RTC_CNTL_WDT_EN ;
 int RTC_CNTL_WDT_FEED ;
 int RTC_CNTL_WDT_PAUSE_IN_SLP ;
 int SET_PERI_REG_MASK (int ,int) ;

void rtc_wdt_enable(void)
{
    REG_SET_BIT(RTC_CNTL_WDTFEED_REG, RTC_CNTL_WDT_FEED);
    SET_PERI_REG_MASK(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_EN | RTC_CNTL_WDT_PAUSE_IN_SLP);
}
