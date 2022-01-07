
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ GET_PERI_REG_MASK (int ,int ) ;
 int READ_PERI_REG (int ) ;
 int RTC_CNTL_INT_CLR_REG ;
 int RTC_CNTL_TIME0_REG ;
 int RTC_CNTL_TIME1_REG ;
 int RTC_CNTL_TIME_UPDATE ;
 int RTC_CNTL_TIME_UPDATE_REG ;
 int RTC_CNTL_TIME_VALID ;
 int RTC_CNTL_TIME_VALID_INT_CLR ;
 int SET_PERI_REG_MASK (int ,int ) ;
 int ets_delay_us (int) ;

uint64_t rtc_time_get(void)
{
    SET_PERI_REG_MASK(RTC_CNTL_TIME_UPDATE_REG, RTC_CNTL_TIME_UPDATE);
    while (GET_PERI_REG_MASK(RTC_CNTL_TIME_UPDATE_REG, RTC_CNTL_TIME_VALID) == 0) {
        ets_delay_us(1);
    }
    SET_PERI_REG_MASK(RTC_CNTL_INT_CLR_REG, RTC_CNTL_TIME_VALID_INT_CLR);
    uint64_t t = READ_PERI_REG(RTC_CNTL_TIME0_REG);
    t |= ((uint64_t) READ_PERI_REG(RTC_CNTL_TIME1_REG)) << 32;
    return t;
}
