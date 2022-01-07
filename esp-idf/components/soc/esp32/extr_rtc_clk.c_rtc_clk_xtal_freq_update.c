
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int rtc_xtal_freq_t ;


 int READ_PERI_REG (int ) ;
 int RTC_DISABLE_ROM_LOG ;
 int RTC_XTAL_FREQ_REG ;
 int WRITE_PERI_REG (int ,int ) ;
 int clk_val_to_reg_val (int) ;

void rtc_clk_xtal_freq_update(rtc_xtal_freq_t xtal_freq)
{
    uint32_t reg = READ_PERI_REG(RTC_XTAL_FREQ_REG) & RTC_DISABLE_ROM_LOG;
    if (reg == RTC_DISABLE_ROM_LOG) {
        xtal_freq |= 1;
    }
    WRITE_PERI_REG(RTC_XTAL_FREQ_REG, clk_val_to_reg_val(xtal_freq));
}
