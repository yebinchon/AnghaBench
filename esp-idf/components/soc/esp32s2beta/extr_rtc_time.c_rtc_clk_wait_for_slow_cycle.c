
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GET_PERI_REG_MASK (int ,int ) ;
 int RTC_CNTL_SLOW_CLK_CONF_REG ;
 int RTC_CNTL_SLOW_CLK_NEXT_EDGE ;
 int SET_PERI_REG_MASK (int ,int ) ;
 int ets_delay_us (int) ;

void rtc_clk_wait_for_slow_cycle(void)
{
    SET_PERI_REG_MASK(RTC_CNTL_SLOW_CLK_CONF_REG, RTC_CNTL_SLOW_CLK_NEXT_EDGE);
    while (GET_PERI_REG_MASK(RTC_CNTL_SLOW_CLK_CONF_REG, RTC_CNTL_SLOW_CLK_NEXT_EDGE)) {
        ets_delay_us(1);
    }
}
