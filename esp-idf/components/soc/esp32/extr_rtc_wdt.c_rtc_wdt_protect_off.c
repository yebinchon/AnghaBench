
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTC_CNTL_WDTWPROTECT_REG ;
 int RTC_CNTL_WDT_WKEY_VALUE ;
 int WRITE_PERI_REG (int ,int ) ;

void rtc_wdt_protect_off(void)
{
    WRITE_PERI_REG(RTC_CNTL_WDTWPROTECT_REG, RTC_CNTL_WDT_WKEY_VALUE);
}
