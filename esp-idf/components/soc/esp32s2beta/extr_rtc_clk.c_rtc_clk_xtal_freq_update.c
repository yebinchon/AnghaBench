
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtc_xtal_freq_t ;


 int RTC_XTAL_FREQ_REG ;
 int WRITE_PERI_REG (int ,int ) ;
 int clk_val_to_reg_val (int ) ;

void rtc_clk_xtal_freq_update(rtc_xtal_freq_t xtal_freq)
{
    WRITE_PERI_REG(RTC_XTAL_FREQ_REG, clk_val_to_reg_val(xtal_freq));
}
