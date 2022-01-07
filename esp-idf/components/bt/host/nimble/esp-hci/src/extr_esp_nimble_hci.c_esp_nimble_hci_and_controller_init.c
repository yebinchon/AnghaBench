
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;
typedef int esp_bt_controller_config_t ;


 int BT_CONTROLLER_INIT_CONFIG_DEFAULT () ;
 int ESP_BT_MODE_BLE ;
 int ESP_BT_MODE_CLASSIC_BT ;
 int ESP_OK ;
 int esp_bt_controller_enable (int ) ;
 int esp_bt_controller_init (int *) ;
 int esp_bt_controller_mem_release (int ) ;
 int esp_nimble_hci_init () ;

esp_err_t esp_nimble_hci_and_controller_init(void)
{
    esp_err_t ret;

    esp_bt_controller_mem_release(ESP_BT_MODE_CLASSIC_BT);

    esp_bt_controller_config_t bt_cfg = BT_CONTROLLER_INIT_CONFIG_DEFAULT();

    if ((ret = esp_bt_controller_init(&bt_cfg)) != ESP_OK) {
        return ret;
    }

    if ((ret = esp_bt_controller_enable(ESP_BT_MODE_BLE)) != ESP_OK) {
        return ret;
    }
    return esp_nimble_hci_init();
}
