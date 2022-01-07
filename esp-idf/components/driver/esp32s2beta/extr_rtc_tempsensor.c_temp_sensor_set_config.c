
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {size_t dac_offset; int clk_div; } ;
typedef TYPE_3__ temp_sensor_config_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int tsens_xpd_force; int tsens_reset; int tsens_xpd_wait; } ;
struct TYPE_8__ {int tsens_power_up_force; int tsens_clk_div; int tsens_dac; } ;
struct TYPE_11__ {TYPE_1__ sar_tctrl2; TYPE_2__ sar_tctrl; } ;
struct TYPE_10__ {int error_max; int range_max; int range_min; int set_val; } ;


 int ESP_LOGI (int ,char*,int ,int ,int ) ;
 int ESP_OK ;
 TYPE_6__ SENS ;
 int TAG ;
 int TSENS_XPD_WAIT_DEFAULT ;
 TYPE_5__* dac_offset ;

esp_err_t temp_sensor_set_config(temp_sensor_config_t tsens)
{
    SENS.sar_tctrl.tsens_dac = dac_offset[tsens.dac_offset].set_val;
    SENS.sar_tctrl.tsens_clk_div = tsens.clk_div;
    SENS.sar_tctrl.tsens_power_up_force = 1;
    SENS.sar_tctrl2.tsens_xpd_wait = TSENS_XPD_WAIT_DEFAULT;
    SENS.sar_tctrl2.tsens_xpd_force = 1;
    SENS.sar_tctrl2.tsens_reset = 1;
    SENS.sar_tctrl2.tsens_reset = 0;
    ESP_LOGI(TAG, "Config temperature range [%d°C ~ %d°C], error < %d°C",
             dac_offset[tsens.dac_offset].range_min,
             dac_offset[tsens.dac_offset].range_max,
             dac_offset[tsens.dac_offset].error_max);
    return ESP_OK;
}
