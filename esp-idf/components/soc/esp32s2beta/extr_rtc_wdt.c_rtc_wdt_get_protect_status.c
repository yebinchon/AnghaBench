
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ READ_PERI_REG (int ) ;
 int RTC_CNTL_WDTWPROTECT_REG ;
 scalar_t__ RTC_CNTL_WDT_WKEY_VALUE ;

bool rtc_wdt_get_protect_status(void)
{
    return READ_PERI_REG(RTC_CNTL_WDTWPROTECT_REG) != RTC_CNTL_WDT_WKEY_VALUE;
}
