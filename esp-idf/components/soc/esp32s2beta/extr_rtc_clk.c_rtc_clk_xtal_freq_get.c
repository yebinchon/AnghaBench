
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int rtc_xtal_freq_t ;


 int READ_PERI_REG (int ) ;
 int RTC_XTAL_FREQ_AUTO ;
 int RTC_XTAL_FREQ_REG ;
 int SOC_LOGW (int ,char*,int ) ;
 int TAG ;
 int clk_val_is_valid (int ) ;
 int reg_val_to_clk_val (int ) ;

rtc_xtal_freq_t rtc_clk_xtal_freq_get(void)
{

    uint32_t xtal_freq_reg = READ_PERI_REG(RTC_XTAL_FREQ_REG);
    if (!clk_val_is_valid(xtal_freq_reg)) {
        SOC_LOGW(TAG, "invalid RTC_XTAL_FREQ_REG value: 0x%08x", xtal_freq_reg);
        return RTC_XTAL_FREQ_AUTO;
    }
    return reg_val_to_clk_val(xtal_freq_reg);
}
