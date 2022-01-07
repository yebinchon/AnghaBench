
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int RTC_CLK_CAL_FRACT ;

uint64_t rtc_time_us_to_slowclk(uint64_t time_in_us, uint32_t period)
{



    return (time_in_us << RTC_CLK_CAL_FRACT) / period;
}
