
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_5__ {scalar_t__ tsens_clkgate_en; } ;
struct TYPE_4__ {scalar_t__ tsens_power_up; } ;
struct TYPE_6__ {TYPE_2__ sar_tctrl2; TYPE_1__ sar_tctrl; } ;


 int ESP_OK ;
 TYPE_3__ SENS ;
 int * rtc_tsens_mux ;
 int vSemaphoreDelete (int *) ;

esp_err_t temp_sensor_stop(void)
{
    SENS.sar_tctrl.tsens_power_up = 0;
    SENS.sar_tctrl2.tsens_clkgate_en = 0;
    if (rtc_tsens_mux != ((void*)0)) {
        vSemaphoreDelete(rtc_tsens_mux);
        rtc_tsens_mux = ((void*)0);
    }
    return ESP_OK;
}
