
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long uint64_t ;
typedef scalar_t__ const uint32_t ;
typedef long long int64_t ;
typedef long long const int32_t ;


 scalar_t__ const REG_READ (int ) ;
 int REG_WRITE (int ,scalar_t__ const) ;
 long long RTC_CLK_CAL_FRACT ;
 int RTC_SLOW_CLK_CAL_REG ;
 long long get_boot_time () ;
 int rtc_time_get () ;
 int set_boot_time (long long) ;

void esp_clk_slowclk_cal_set(uint32_t new_cal)
{
    REG_WRITE(RTC_SLOW_CLK_CAL_REG, new_cal);
}
