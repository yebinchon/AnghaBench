
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_gatts_cb_t ;
typedef int esp_err_t ;


 int BTC_PID_GATTS ;
 int ESP_BLUEDROID_STATUS_CHECK (int ) ;
 int ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ btc_profile_cb_set (int ,int ) ;

esp_err_t esp_ble_gatts_register_callback(esp_gatts_cb_t callback)
{
    ESP_BLUEDROID_STATUS_CHECK(ESP_BLUEDROID_STATUS_ENABLED);

    return (btc_profile_cb_set(BTC_PID_GATTS, callback) == 0 ? ESP_OK : ESP_FAIL);
}
