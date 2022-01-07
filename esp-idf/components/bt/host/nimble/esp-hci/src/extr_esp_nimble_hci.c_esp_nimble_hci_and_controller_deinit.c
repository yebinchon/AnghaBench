
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_OK ;
 int esp_bt_controller_deinit () ;
 int esp_bt_controller_disable () ;
 int esp_nimble_hci_deinit () ;

esp_err_t esp_nimble_hci_and_controller_deinit(void)
{
    int ret;
    ret = esp_nimble_hci_deinit();
    if (ret != ESP_OK) {
        return ret;
    }

    ret = esp_bt_controller_disable();
    if (ret != ESP_OK) {
        return ret;
    }

    ret = esp_bt_controller_deinit();
    if (ret != ESP_OK) {
        return ret;
    }

    return ESP_OK;
}
