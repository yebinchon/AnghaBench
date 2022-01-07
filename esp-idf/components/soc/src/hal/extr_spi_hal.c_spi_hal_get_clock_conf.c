
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ timing_dummy; int timing_miso_delay; int clock_reg; } ;
typedef TYPE_1__ spi_hal_timing_conf_t ;
struct TYPE_6__ {scalar_t__ no_compensate; scalar_t__ half_duplex; } ;
typedef TYPE_2__ spi_hal_context_t ;
typedef int esp_err_t ;


 int APB_CLK_FREQ ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_OK ;
 int SPI_HAL_CHECK (int,char*,int ,int const) ;
 int spi_hal_cal_timing (int,int,int,scalar_t__*,int *) ;
 int spi_hal_get_freq_limit (int,int) ;
 int spi_ll_master_cal_clock (int ,int,int,int *) ;

esp_err_t spi_hal_get_clock_conf(const spi_hal_context_t *hal, int speed_hz, int duty_cycle, bool use_gpio, int input_delay_ns, int *out_freq, spi_hal_timing_conf_t *timing_conf)
{
    spi_hal_timing_conf_t temp_conf;

    int eff_clk_n = spi_ll_master_cal_clock(APB_CLK_FREQ, speed_hz, duty_cycle, &temp_conf.clock_reg);



    spi_hal_cal_timing(eff_clk_n, use_gpio, input_delay_ns, &temp_conf.timing_dummy, &temp_conf.timing_miso_delay);
    if (timing_conf) {
        *timing_conf = temp_conf;
    }
    if (out_freq) {
        *out_freq = eff_clk_n;
    }
    return ESP_OK;
}
