
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAR_PERI_REG_MASK (int ,int) ;
 int RTC_IO_TOUCH_PAD9_REG ;
 int RTC_IO_TOUCH_PAD9_XPD_M ;
 int RTC_IO_X32N_MUX_SEL ;
 int RTC_IO_X32P_MUX_SEL ;
 int RTC_IO_XPD_XTAL_32K_M ;
 int RTC_IO_XTAL_32K_PAD_REG ;
 int XTAL_32K_DAC_VAL ;
 int XTAL_32K_DBIAS_VAL ;
 int XTAL_32K_DRES_VAL ;
 int rtc_clk_32k_enable_common (int ,int ,int ) ;

void rtc_clk_32k_enable(bool enable)
{
    if (enable) {
        rtc_clk_32k_enable_common(XTAL_32K_DAC_VAL, XTAL_32K_DRES_VAL, XTAL_32K_DBIAS_VAL);
    } else {

        CLEAR_PERI_REG_MASK(RTC_IO_XTAL_32K_PAD_REG, RTC_IO_XPD_XTAL_32K_M);
        CLEAR_PERI_REG_MASK(RTC_IO_XTAL_32K_PAD_REG, RTC_IO_X32N_MUX_SEL | RTC_IO_X32P_MUX_SEL);





    }
}
