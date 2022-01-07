
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * esp_hidd_event_cb_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int * hidd_cb; } ;


 int BATTRAY_APP_ID ;
 int ESP_FAIL ;
 int ESP_OK ;
 int HIDD_APP_ID ;
 int esp_ble_gatts_app_register (int ) ;
 TYPE_1__ hidd_le_env ;
 int hidd_register_cb () ;

esp_err_t esp_hidd_register_callbacks(esp_hidd_event_cb_t callbacks)
{
    esp_err_t hidd_status;

    if(callbacks != ((void*)0)) {
        hidd_le_env.hidd_cb = callbacks;
    } else {
        return ESP_FAIL;
    }

    if((hidd_status = hidd_register_cb()) != ESP_OK) {
        return hidd_status;
    }

    esp_ble_gatts_app_register(BATTRAY_APP_ID);

    if((hidd_status = esp_ble_gatts_app_register(HIDD_APP_ID)) != ESP_OK) {
        return hidd_status;
    }

    return hidd_status;
}
