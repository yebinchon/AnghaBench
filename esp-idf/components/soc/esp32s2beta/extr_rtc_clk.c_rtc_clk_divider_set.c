
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int REG_SET_FIELD (int ,int ,int ) ;
 int RTC_CNTL_ANA_CLK_DIV ;
 int RTC_CNTL_ANA_CLK_DIV_VLD ;
 int RTC_CNTL_SLOW_CLK_CONF_REG ;
 int SET_PERI_REG_MASK (int ,int ) ;

void rtc_clk_divider_set(uint32_t div)
{
    CLEAR_PERI_REG_MASK(RTC_CNTL_SLOW_CLK_CONF_REG, RTC_CNTL_ANA_CLK_DIV_VLD);
    REG_SET_FIELD(RTC_CNTL_SLOW_CLK_CONF_REG, RTC_CNTL_ANA_CLK_DIV, div);
    SET_PERI_REG_MASK(RTC_CNTL_SLOW_CLK_CONF_REG, RTC_CNTL_ANA_CLK_DIV_VLD);
}
