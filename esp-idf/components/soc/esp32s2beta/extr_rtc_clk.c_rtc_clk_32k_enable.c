
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int RTC_CNTL_EXT_XTL_CONF_REG ;
 int RTC_CNTL_XPD_XTAL_32K ;
 int RTC_CNTL_XTAL32K_XPD_FORCE ;
 int SET_PERI_REG_MASK (int ,int ) ;
 int XTAL_32K_DAC_VAL ;
 int XTAL_32K_DGM_VAL ;
 int XTAL_32K_DRES_VAL ;
 int rtc_clk_32k_enable_internal (int ,int ,int ) ;

void rtc_clk_32k_enable(bool enable)
{
    if (enable) {
        rtc_clk_32k_enable_internal(XTAL_32K_DAC_VAL, XTAL_32K_DRES_VAL, XTAL_32K_DGM_VAL);
    } else {
        CLEAR_PERI_REG_MASK(RTC_CNTL_EXT_XTL_CONF_REG, RTC_CNTL_XPD_XTAL_32K);
        SET_PERI_REG_MASK(RTC_CNTL_EXT_XTL_CONF_REG, RTC_CNTL_XTAL32K_XPD_FORCE);
    }
}
