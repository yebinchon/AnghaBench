
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int DELAY_8M_ENABLE ;
 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_CNTL_CK8M_WAIT ;
 int RTC_CNTL_CK8M_WAIT_DEFAULT ;
 int RTC_CNTL_CLK_CONF_REG ;
 int RTC_CNTL_ENB_CK8M ;
 int RTC_CNTL_ENB_CK8M_DIV ;
 int RTC_CNTL_TIMER1_REG ;
 int SET_PERI_REG_MASK (int ,int ) ;
 int ets_delay_us (int ) ;

void rtc_clk_8m_enable(bool clk_8m_en, bool d256_en)
{
    if (clk_8m_en) {
        CLEAR_PERI_REG_MASK(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_ENB_CK8M);

        REG_SET_FIELD(RTC_CNTL_TIMER1_REG, RTC_CNTL_CK8M_WAIT, 1);
        if (d256_en) {
            CLEAR_PERI_REG_MASK(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_ENB_CK8M_DIV);
        } else {
            SET_PERI_REG_MASK(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_ENB_CK8M_DIV);
        }
        ets_delay_us(DELAY_8M_ENABLE);
    } else {
        SET_PERI_REG_MASK(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_ENB_CK8M);
        REG_SET_FIELD(RTC_CNTL_TIMER1_REG, RTC_CNTL_CK8M_WAIT, RTC_CNTL_CK8M_WAIT_DEFAULT);
    }
}
