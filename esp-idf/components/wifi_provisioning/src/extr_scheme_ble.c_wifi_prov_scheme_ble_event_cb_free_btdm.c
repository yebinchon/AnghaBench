
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_prov_cb_event_t ;
typedef int esp_err_t ;


 int ESP_BT_MODE_BTDM ;
 int ESP_BT_MODE_CLASSIC_BT ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*) ;
 int ESP_OK ;
 int TAG ;


 int esp_bt_mem_release (int ) ;

void wifi_prov_scheme_ble_event_cb_free_btdm(void *user_data, wifi_prov_cb_event_t event, void *event_data)
{
    esp_err_t err;
    switch (event) {
        case 128:

            err = esp_bt_mem_release(ESP_BT_MODE_CLASSIC_BT);
            if (err != ESP_OK) {
                ESP_LOGE(TAG, "bt_mem_release of classic BT failed %d", err);
            } else {
                ESP_LOGI(TAG, "BT memory released");
            }
            break;

        case 129:

            err = esp_bt_mem_release(ESP_BT_MODE_BTDM);
            if (err != ESP_OK) {
                ESP_LOGE(TAG, "bt_mem_release of BTDM failed %d", err);
            } else {
                ESP_LOGI(TAG, "BTDM memory released");
            }
            break;

        default:
            break;
    }
}
