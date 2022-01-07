
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_CLR_BIT (int ,int ) ;
 int REG_SET_BIT (int ,int ) ;
 int RTC_CNTL_WDTCONFIG0_REG ;
 int RTC_CNTL_WDTFEED_REG ;
 int RTC_CNTL_WDT_EN ;
 int RTC_CNTL_WDT_FEED ;
 int RTC_CNTL_WDT_FLASHBOOT_MOD_EN ;
 int RTC_WDT_STAGE0 ;
 int RTC_WDT_STAGE1 ;
 int RTC_WDT_STAGE2 ;
 int RTC_WDT_STAGE3 ;
 int RTC_WDT_STAGE_ACTION_OFF ;
 int rtc_wdt_get_protect_status () ;
 int rtc_wdt_protect_off () ;
 int rtc_wdt_protect_on () ;
 int rtc_wdt_set_stage (int ,int ) ;

void rtc_wdt_disable(void)
{
    bool protect = rtc_wdt_get_protect_status();
    if (protect) {
        rtc_wdt_protect_off();
    }
    REG_SET_BIT(RTC_CNTL_WDTFEED_REG, RTC_CNTL_WDT_FEED);
    rtc_wdt_set_stage(RTC_WDT_STAGE0, RTC_WDT_STAGE_ACTION_OFF);
    rtc_wdt_set_stage(RTC_WDT_STAGE1, RTC_WDT_STAGE_ACTION_OFF);
    rtc_wdt_set_stage(RTC_WDT_STAGE2, RTC_WDT_STAGE_ACTION_OFF);
    rtc_wdt_set_stage(RTC_WDT_STAGE3, RTC_WDT_STAGE_ACTION_OFF);
    REG_CLR_BIT(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_FLASHBOOT_MOD_EN);
    REG_CLR_BIT(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_EN);
    if (protect) {
        rtc_wdt_protect_on();
    }
}
