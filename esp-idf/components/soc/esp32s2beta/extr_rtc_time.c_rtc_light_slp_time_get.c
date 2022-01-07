
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int READ_PERI_REG (int ) ;
 int RTC_CNTL_TIME_HIGH0_REG ;
 int RTC_CNTL_TIME_HIGH1_REG ;
 int RTC_CNTL_TIME_LOW0_REG ;
 int RTC_CNTL_TIME_LOW1_REG ;

uint64_t rtc_light_slp_time_get(void)
{
    uint64_t t_wake = READ_PERI_REG(RTC_CNTL_TIME_LOW0_REG);
    t_wake |= ((uint64_t) READ_PERI_REG(RTC_CNTL_TIME_HIGH0_REG)) << 32;
    uint64_t t_slp = READ_PERI_REG(RTC_CNTL_TIME_LOW1_REG);
    t_slp |= ((uint64_t) READ_PERI_REG(RTC_CNTL_TIME_HIGH1_REG)) << 32;
    return (t_wake - t_slp);
}
