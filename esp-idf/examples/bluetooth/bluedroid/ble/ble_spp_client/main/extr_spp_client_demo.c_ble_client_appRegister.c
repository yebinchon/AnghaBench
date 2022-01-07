
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ esp_err_t ;
typedef int err_msg ;


 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int GATTC_TAG ;
 int PROFILE_APP_ID ;
 void* cmd_heartbeat_queue ;
 void* cmd_reg_queue ;
 scalar_t__ esp_ble_gap_register_callback (int ) ;
 scalar_t__ esp_ble_gatt_set_local_mtu (int) ;
 int esp_ble_gattc_app_register (int ) ;
 scalar_t__ esp_ble_gattc_register_callback (int ) ;
 int esp_err_to_name_r (scalar_t__,char*,int) ;
 int esp_gap_cb ;
 int esp_gattc_cb ;
 int spp_client_reg_task ;
 int spp_heart_beat_task ;
 void* xQueueCreate (int,int) ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

void ble_client_appRegister(void)
{
    esp_err_t status;
    char err_msg[20];

    ESP_LOGI(GATTC_TAG, "register callback");


    if ((status = esp_ble_gap_register_callback(esp_gap_cb)) != ESP_OK) {
        ESP_LOGE(GATTC_TAG, "gap register error: %s", esp_err_to_name_r(status, err_msg, sizeof(err_msg)));
        return;
    }

    if ((status = esp_ble_gattc_register_callback(esp_gattc_cb)) != ESP_OK) {
        ESP_LOGE(GATTC_TAG, "gattc register error: %s", esp_err_to_name_r(status, err_msg, sizeof(err_msg)));
        return;
    }
    esp_ble_gattc_app_register(PROFILE_APP_ID);

    esp_err_t local_mtu_ret = esp_ble_gatt_set_local_mtu(200);
    if (local_mtu_ret){
        ESP_LOGE(GATTC_TAG, "set local  MTU failed: %s", esp_err_to_name_r(local_mtu_ret, err_msg, sizeof(err_msg)));
    }

    cmd_reg_queue = xQueueCreate(10, sizeof(uint32_t));
    xTaskCreate(spp_client_reg_task, "spp_client_reg_task", 2048, ((void*)0), 10, ((void*)0));





}
