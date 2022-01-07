
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_SET_BIT (int ,int ) ;
 int RTC_CNTL_STORE4_REG ;
 int RTC_DISABLE_ROM_LOG ;

void esp_deep_sleep_disable_rom_logging(void)
{





    REG_SET_BIT(RTC_CNTL_STORE4_REG, RTC_DISABLE_ROM_LOG);
}
