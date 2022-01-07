
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * esp_hf_cb_t ;
typedef int esp_err_t ;


 int BTC_PID_HF ;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_profile_cb_set (int ,int *) ;
 scalar_t__ esp_bluedroid_get_status () ;

esp_err_t esp_bt_hf_register_callback(esp_hf_cb_t callback)
{
    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }
    if (callback == ((void*)0)) {
        return ESP_FAIL;
    }
    btc_profile_cb_set(BTC_PID_HF, callback);
    return ESP_OK;
}
