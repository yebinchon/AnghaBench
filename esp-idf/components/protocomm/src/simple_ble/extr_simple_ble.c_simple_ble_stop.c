
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ esp_bluedroid_deinit () ;
 scalar_t__ esp_bluedroid_disable () ;
 scalar_t__ esp_bt_controller_deinit () ;
 scalar_t__ esp_bt_controller_disable () ;
 int esp_get_free_heap_size () ;

esp_err_t simple_ble_stop(void)
{
    esp_err_t err;
    ESP_LOGD(TAG, "Free mem at start of simple_ble_stop %d", esp_get_free_heap_size());
    err = esp_bluedroid_disable();
    if (err != ESP_OK) {
        return ESP_FAIL;
    }
    ESP_LOGD(TAG, "esp_bluedroid_disable called successfully");
    err = esp_bluedroid_deinit();
    if (err != ESP_OK) {
        return err;
    }
    ESP_LOGD(TAG, "esp_bluedroid_deinit called successfully");
    err = esp_bt_controller_disable();
    if (err != ESP_OK) {
        return ESP_FAIL;
    }




    ESP_LOGD(TAG, "esp_bt_controller_disable called successfully");
    err = esp_bt_controller_deinit();
    if (err != ESP_OK) {
        return ESP_FAIL;
    }
    ESP_LOGD(TAG, "esp_bt_controller_deinit called successfully");

    ESP_LOGD(TAG, "Free mem at end of simple_ble_stop %d", esp_get_free_heap_size());
    return ESP_OK;
}
