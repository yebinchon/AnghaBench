
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_4__ {int event_cb; } ;
typedef TYPE_1__ esp_blufi_callbacks_t ;


 int BTC_PID_BLUFI ;
 scalar_t__ ESP_BLUEDROID_STATUS_UNINITIALIZED ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_blufi_set_callbacks (TYPE_1__*) ;
 scalar_t__ btc_profile_cb_set (int ,int ) ;
 scalar_t__ esp_bluedroid_get_status () ;

esp_err_t esp_blufi_register_callbacks(esp_blufi_callbacks_t *callbacks)
{
    if (esp_bluedroid_get_status() == ESP_BLUEDROID_STATUS_UNINITIALIZED) {
        return ESP_ERR_INVALID_STATE;
    }

    if (callbacks == ((void*)0)) {
        return ESP_FAIL;
    }

    btc_blufi_set_callbacks(callbacks);
    return (btc_profile_cb_set(BTC_PID_BLUFI, callbacks->event_cb) == 0 ? ESP_OK : ESP_FAIL);
}
