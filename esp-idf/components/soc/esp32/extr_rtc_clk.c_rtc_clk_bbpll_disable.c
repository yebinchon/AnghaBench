
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ REG_GET_FIELD (int ,int ) ;
 int RTC_CNTL_ANA_CONF_REG ;
 int RTC_CNTL_BBPLL_FORCE_PD ;
 int RTC_CNTL_BBPLL_I2C_FORCE_PD ;
 int RTC_CNTL_BB_I2C_FORCE_PD ;
 int RTC_CNTL_BIAS_I2C_FORCE_PD ;
 int RTC_CNTL_OPTIONS0_REG ;
 int RTC_CNTL_PLLA_FORCE_PD ;
 int SET_PERI_REG_MASK (int ,int) ;
 scalar_t__ s_cur_pll_freq ;

__attribute__((used)) static void rtc_clk_bbpll_disable(void)
{
    SET_PERI_REG_MASK(RTC_CNTL_OPTIONS0_REG,
            RTC_CNTL_BB_I2C_FORCE_PD | RTC_CNTL_BBPLL_FORCE_PD |
            RTC_CNTL_BBPLL_I2C_FORCE_PD);
    s_cur_pll_freq = 0;


    uint32_t apll_fpd = REG_GET_FIELD(RTC_CNTL_ANA_CONF_REG, RTC_CNTL_PLLA_FORCE_PD);
    if (apll_fpd) {

        SET_PERI_REG_MASK(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_I2C_FORCE_PD);
    }
}
