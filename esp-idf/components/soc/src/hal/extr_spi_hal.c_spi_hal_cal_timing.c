
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APB_CLK_FREQ ;
 int GPIO_MATRIX_DELAY_NS ;
 int HAL_LOGD (int ,char*,int,int const,int,int,int) ;
 int SPI_HAL_TAG ;

void spi_hal_cal_timing(int eff_clk, bool gpio_is_used, int input_delay_ns, int *dummy_n, int *miso_delay_n)
{
    const int apbclk_kHz = APB_CLK_FREQ / 1000;

    const int apbclk_n = APB_CLK_FREQ / eff_clk;
    const int gpio_delay_ns = gpio_is_used ? GPIO_MATRIX_DELAY_NS : 0;


    int apb_period_n = (1 + input_delay_ns + gpio_delay_ns) * apbclk_kHz / 1000 / 1000;
    if (apb_period_n < 0) {
        apb_period_n = 0;
    }

    int dummy_required = apb_period_n / apbclk_n;

    int miso_delay = 0;
    if (dummy_required > 0) {


        miso_delay = (dummy_required + 1) * apbclk_n - apb_period_n - 1;
    } else {

        if (apb_period_n * 4 <= apbclk_n) {
            miso_delay = -1;
        }
    }
    *dummy_n = dummy_required;
    *miso_delay_n = miso_delay;
    HAL_LOGD(SPI_HAL_TAG, "eff: %d, limit: %dk(/%d), %d dummy, %d delay", eff_clk / 1000, apbclk_kHz / (apb_period_n + 1), apb_period_n, dummy_required, miso_delay);
}
