
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int REG_SET_FIELD (int ,int ,int ) ;
 int RTC_CNTL_CK8M_DIV_SEL ;
 int RTC_CNTL_CK8M_DIV_SEL_VLD ;
 int RTC_CNTL_CLK_CONF_REG ;
 int SET_PERI_REG_MASK (int ,int ) ;

void rtc_clk_8m_divider_set(uint32_t div)
{
    CLEAR_PERI_REG_MASK(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_CK8M_DIV_SEL_VLD);
    REG_SET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_CK8M_DIV_SEL, div);
    SET_PERI_REG_MASK(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_CK8M_DIV_SEL_VLD);
}
