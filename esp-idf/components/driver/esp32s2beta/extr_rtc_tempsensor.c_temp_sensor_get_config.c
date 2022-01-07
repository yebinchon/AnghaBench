
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dac_offset; int clk_div; } ;
typedef TYPE_2__ temp_sensor_config_t ;
typedef int esp_err_t ;
struct TYPE_6__ {scalar_t__ tsens_dac; int tsens_clk_div; } ;
struct TYPE_9__ {TYPE_1__ sar_tctrl; } ;
struct TYPE_8__ {scalar_t__ set_val; scalar_t__ index; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_5__ SENS ;
 int TSENS_CHECK (int ,int ) ;
 int TSENS_DAC_L0 ;
 int TSENS_DAC_MAX ;
 TYPE_4__* dac_offset ;

esp_err_t temp_sensor_get_config(temp_sensor_config_t *tsens)
{
    TSENS_CHECK(tsens != ((void*)0), ESP_ERR_INVALID_ARG);
    tsens->dac_offset = SENS.sar_tctrl.tsens_dac;
    for(int i=TSENS_DAC_L0; i<TSENS_DAC_MAX; i++) {
        if(tsens->dac_offset == dac_offset[i].set_val) {
            tsens->dac_offset = dac_offset[i].index;
            break;
        }
    }
    tsens->clk_div = SENS.sar_tctrl.tsens_clk_div;
    return ESP_OK;
}
