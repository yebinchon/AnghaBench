
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_CLR_BIT (int ,int) ;
 int REG_SET_BIT (int ,int ) ;
 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_IO_DEBUG_SEL0 ;
 int RTC_IO_PAD_DAC1_REG ;
 int RTC_IO_PDAC1_FUN_SEL ;
 int RTC_IO_PDAC1_MUX_SEL_M ;
 int RTC_IO_PDAC1_RDE_M ;
 int RTC_IO_PDAC1_RUE_M ;
 int RTC_IO_RTC_DEBUG_SEL_REG ;
 int SENS_DEBUG_BIT_SEL ;
 int SENS_SAR_DAC_CTRL1_REG ;

__attribute__((used)) static void pull_out_clk(int sel)
{
    REG_SET_BIT(RTC_IO_PAD_DAC1_REG, RTC_IO_PDAC1_MUX_SEL_M);
    REG_CLR_BIT(RTC_IO_PAD_DAC1_REG, RTC_IO_PDAC1_RDE_M | RTC_IO_PDAC1_RUE_M);
    REG_SET_FIELD(RTC_IO_PAD_DAC1_REG, RTC_IO_PDAC1_FUN_SEL, 1);
    REG_SET_FIELD(SENS_SAR_DAC_CTRL1_REG, SENS_DEBUG_BIT_SEL, 0);
    REG_SET_FIELD(RTC_IO_RTC_DEBUG_SEL_REG, RTC_IO_DEBUG_SEL0, sel);
}
