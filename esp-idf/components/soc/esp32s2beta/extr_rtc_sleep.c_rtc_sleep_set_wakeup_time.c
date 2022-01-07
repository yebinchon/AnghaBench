
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int RTC_CNTL_SLP_TIMER0_REG ;
 int RTC_CNTL_SLP_TIMER1_REG ;
 int UINT32_MAX ;
 int WRITE_PERI_REG (int ,int) ;

void rtc_sleep_set_wakeup_time(uint64_t t)
{
    WRITE_PERI_REG(RTC_CNTL_SLP_TIMER0_REG, t & UINT32_MAX);
    WRITE_PERI_REG(RTC_CNTL_SLP_TIMER1_REG, t >> 32);
}
