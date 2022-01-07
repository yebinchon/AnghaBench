
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_SET_BIT (int ,int ) ;
 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_CNTL_WDTCONFIG0_REG ;
 int RTC_CNTL_WDTCONFIG1_REG ;
 int RTC_CNTL_WDTWPROTECT_REG ;
 int RTC_CNTL_WDT_FLASHBOOT_MOD_EN ;
 int RTC_CNTL_WDT_STG0 ;
 int RTC_CNTL_WDT_SYS_RESET_LENGTH ;
 int RTC_CNTL_WDT_WKEY_VALUE ;
 int RTC_WDT_STG_SEL_RESET_SYSTEM ;
 int WRITE_PERI_REG (int ,int) ;
 int setup_values () ;

__attribute__((used)) static void do_rtc_wdt(void)
{
    setup_values();
    WRITE_PERI_REG(RTC_CNTL_WDTWPROTECT_REG, RTC_CNTL_WDT_WKEY_VALUE);
    REG_SET_FIELD(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_SYS_RESET_LENGTH, 7);
    REG_SET_FIELD(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_STG0, RTC_WDT_STG_SEL_RESET_SYSTEM);
    WRITE_PERI_REG(RTC_CNTL_WDTCONFIG1_REG, 10000);
    REG_SET_BIT(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_FLASHBOOT_MOD_EN);
    while(1);
}
