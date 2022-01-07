
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spi_hal_cal_timing (int,int,int,int*,int*) ;

void spi_get_timing(bool gpio_is_used, int input_delay_ns, int eff_clk, int* dummy_o, int* cycles_remain_o)
{
    int timing_dummy;
    int timing_miso_delay;

    spi_hal_cal_timing(eff_clk, gpio_is_used, input_delay_ns, &timing_dummy, &timing_miso_delay);
    if (dummy_o) *dummy_o = timing_dummy;
    if (cycles_remain_o) *cycles_remain_o = timing_miso_delay;
}
