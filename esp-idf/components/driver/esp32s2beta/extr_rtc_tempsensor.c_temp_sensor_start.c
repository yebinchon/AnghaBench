
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_5__ {int tsens_power_up; scalar_t__ tsens_dump_out; } ;
struct TYPE_4__ {int tsens_clkgate_en; } ;
struct TYPE_6__ {TYPE_2__ sar_tctrl; TYPE_1__ sar_tctrl2; } ;


 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 TYPE_3__ SENS ;
 int TSENS_CHECK (int ,int ) ;
 int * rtc_tsens_mux ;
 int * xSemaphoreCreateMutex () ;

esp_err_t temp_sensor_start(void)
{
    if (rtc_tsens_mux == ((void*)0)) {
        rtc_tsens_mux = xSemaphoreCreateMutex();
    }
    TSENS_CHECK(rtc_tsens_mux != ((void*)0), ESP_ERR_NO_MEM);
    SENS.sar_tctrl.tsens_dump_out = 0;
    SENS.sar_tctrl2.tsens_clkgate_en = 1;
    SENS.sar_tctrl.tsens_power_up = 1;
    return ESP_OK;
}
