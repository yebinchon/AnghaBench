
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_SET_BIT (int ,int ) ;
 int RTC_CNTL_WDTCONFIG0_REG ;
 int RTC_CNTL_WDT_FLASHBOOT_MOD_EN ;

void rtc_wdt_flashboot_mode_enable(void)
{
    REG_SET_BIT(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_FLASHBOOT_MOD_EN);
}
