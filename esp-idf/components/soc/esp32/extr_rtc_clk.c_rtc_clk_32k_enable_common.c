
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAR_PERI_REG_MASK (int ,int) ;
 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_IO_DAC_XTAL_32K ;
 int RTC_IO_DBIAS_XTAL_32K ;
 int RTC_IO_DRES_XTAL_32K ;
 int RTC_IO_TOUCH_CFG_REG ;
 int RTC_IO_TOUCH_PAD8_DAC ;
 int RTC_IO_TOUCH_PAD8_DAC_S ;
 int RTC_IO_TOUCH_PAD8_REG ;
 int RTC_IO_TOUCH_PAD9_REG ;
 int RTC_IO_TOUCH_PAD9_TIE_OPT_M ;
 int RTC_IO_TOUCH_PAD9_XPD_M ;
 int RTC_IO_TOUCH_XPD_BIAS_M ;
 int RTC_IO_X32N_FUN_IE ;
 int RTC_IO_X32N_MUX_SEL ;
 int RTC_IO_X32N_RDE ;
 int RTC_IO_X32N_RUE ;
 int RTC_IO_X32P_FUN_IE ;
 int RTC_IO_X32P_MUX_SEL ;
 int RTC_IO_X32P_RDE ;
 int RTC_IO_X32P_RUE ;
 int RTC_IO_XPD_XTAL_32K_M ;
 int RTC_IO_XTAL_32K_PAD_REG ;
 int SET_PERI_REG_BITS (int ,int ,int,int ) ;
 int SET_PERI_REG_MASK (int ,int) ;

__attribute__((used)) static void rtc_clk_32k_enable_common(int dac, int dres, int dbias)
{
    CLEAR_PERI_REG_MASK(RTC_IO_XTAL_32K_PAD_REG,
                        RTC_IO_X32P_RDE | RTC_IO_X32P_RUE | RTC_IO_X32N_RUE |
                        RTC_IO_X32N_RDE | RTC_IO_X32N_FUN_IE | RTC_IO_X32P_FUN_IE);
    SET_PERI_REG_MASK(RTC_IO_XTAL_32K_PAD_REG, RTC_IO_X32N_MUX_SEL | RTC_IO_X32P_MUX_SEL);





    REG_SET_FIELD(RTC_IO_XTAL_32K_PAD_REG, RTC_IO_DAC_XTAL_32K, dac);
    REG_SET_FIELD(RTC_IO_XTAL_32K_PAD_REG, RTC_IO_DRES_XTAL_32K, dres);
    REG_SET_FIELD(RTC_IO_XTAL_32K_PAD_REG, RTC_IO_DBIAS_XTAL_32K, dbias);
    SET_PERI_REG_MASK(RTC_IO_XTAL_32K_PAD_REG, RTC_IO_XPD_XTAL_32K_M);
}
