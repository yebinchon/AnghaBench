
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ REG_GET_BIT (int ,int ) ;
 int RTC_CNTL_WDTCONFIG0_REG ;
 int RTC_CNTL_WDT_EN ;
 int RTC_CNTL_WDT_FLASHBOOT_MOD_EN ;

bool rtc_wdt_is_on(void)
{
    return (REG_GET_BIT(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_EN) != 0) || (REG_GET_BIT(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_FLASHBOOT_MOD_EN) != 0);
}
