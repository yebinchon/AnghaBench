
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int tsens_dump_out; int tsens_out; int tsens_ready; } ;
struct TYPE_4__ {TYPE_1__ sar_tctrl; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 TYPE_2__ SENS ;
 int TSENS_CHECK (int ,int ) ;
 int portMAX_DELAY ;
 int * rtc_tsens_mux ;
 int xSemaphoreGive (int *) ;
 int xSemaphoreTake (int *,int ) ;

esp_err_t temp_sensor_read_raw(uint32_t *tsens_out)
{
    TSENS_CHECK(tsens_out != ((void*)0), ESP_ERR_INVALID_ARG);
    TSENS_CHECK(rtc_tsens_mux != ((void*)0), ESP_ERR_INVALID_STATE);
    xSemaphoreTake(rtc_tsens_mux, portMAX_DELAY);
    SENS.sar_tctrl.tsens_dump_out = 1;
    while (!SENS.sar_tctrl.tsens_ready);
    *tsens_out = SENS.sar_tctrl.tsens_out;
    SENS.sar_tctrl.tsens_dump_out = 0;
    xSemaphoreGive(rtc_tsens_mux);
    return ESP_OK;
}
