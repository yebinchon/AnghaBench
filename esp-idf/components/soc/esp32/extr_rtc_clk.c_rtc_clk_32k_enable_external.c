
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XTAL_32K_EXT_DAC_VAL ;
 int XTAL_32K_EXT_DBIAS_VAL ;
 int XTAL_32K_EXT_DRES_VAL ;
 int rtc_clk_32k_enable_common (int ,int ,int ) ;

void rtc_clk_32k_enable_external(void)
{
    rtc_clk_32k_enable_common(XTAL_32K_EXT_DAC_VAL, XTAL_32K_EXT_DRES_VAL, XTAL_32K_EXT_DBIAS_VAL);
}
