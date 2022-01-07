
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_2__ {int wakeup_triggers; } ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int RTC_EXT0_TRIG_EN ;
 int RTC_ULP_TRIG_EN ;
 int TAG ;
 TYPE_1__ s_config ;

esp_err_t esp_sleep_enable_ulp_wakeup(void)
{
    return ESP_ERR_INVALID_STATE;

}
