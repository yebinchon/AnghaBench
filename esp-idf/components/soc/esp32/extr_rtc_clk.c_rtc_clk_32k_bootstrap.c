
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int RTC_IO_X32N_RDE ;
 int RTC_IO_X32P_RUE ;
 int RTC_IO_XPD_XTAL_32K ;
 int RTC_IO_XTAL_32K_PAD_REG ;
 int RTC_SLOW_CLK_FREQ_32K ;
 int SET_PERI_REG_MASK (int ,int) ;
 int XTAL_32K_BOOTSTRAP_DAC_VAL ;
 int XTAL_32K_BOOTSTRAP_DBIAS_VAL ;
 int XTAL_32K_BOOTSTRAP_DRES_VAL ;
 int const XTAL_32K_BOOTSTRAP_TIME_US ;
 int ets_delay_us (int const) ;
 int gpio_output_set_high (int const,int const,int const,int const) ;
 int gpio_pad_select_gpio (int const) ;
 int rtc_clk_32k_enable_common (int ,int ,int ) ;

void rtc_clk_32k_bootstrap(uint32_t cycle)
{
    if (cycle){
        const uint32_t pin_32 = 32;
        const uint32_t pin_33 = 33;
        const uint32_t mask_32 = (1 << (pin_32 - 32));
        const uint32_t mask_33 = (1 << (pin_33 - 32));

        gpio_pad_select_gpio(pin_32);
        gpio_pad_select_gpio(pin_33);
        gpio_output_set_high(mask_32, mask_33, mask_32 | mask_33, 0);

        const uint32_t delay_us = (1000000 / RTC_SLOW_CLK_FREQ_32K / 2);
        while(cycle){
            gpio_output_set_high(mask_32, mask_33, mask_32 | mask_33, 0);
            ets_delay_us(delay_us);
            gpio_output_set_high(mask_33, mask_32, mask_32 | mask_33, 0);
            ets_delay_us(delay_us);
            cycle--;
        }
        gpio_output_set_high(0, 0, 0, mask_32 | mask_33);
    }

    CLEAR_PERI_REG_MASK(RTC_IO_XTAL_32K_PAD_REG, RTC_IO_XPD_XTAL_32K);
    SET_PERI_REG_MASK(RTC_IO_XTAL_32K_PAD_REG, RTC_IO_X32P_RUE | RTC_IO_X32N_RDE);
    ets_delay_us(XTAL_32K_BOOTSTRAP_TIME_US);

    rtc_clk_32k_enable_common(XTAL_32K_BOOTSTRAP_DAC_VAL,
            XTAL_32K_BOOTSTRAP_DRES_VAL, XTAL_32K_BOOTSTRAP_DBIAS_VAL);
}
