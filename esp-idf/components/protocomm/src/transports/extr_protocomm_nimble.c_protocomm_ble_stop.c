
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int protocomm_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {int * pc_ble; } ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*,scalar_t__) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int ble_cfg_p ;
 scalar_t__ ble_gap_adv_stop () ;
 scalar_t__ esp_nimble_hci_and_controller_deinit () ;
 int free_gatt_ble_misc_memory (int ) ;
 int nimble_port_deinit () ;
 scalar_t__ nimble_port_stop () ;
 TYPE_1__* protoble_internal ;
 int protocomm_ble_cleanup () ;

esp_err_t protocomm_ble_stop(protocomm_t *pc)
{
    ESP_LOGD(TAG, "protocomm_ble_stop called here...");
    if ((pc != ((void*)0)) &&
            (protoble_internal != ((void*)0) ) &&
            (pc == protoble_internal->pc_ble)) {
        esp_err_t ret = ESP_OK;

        esp_err_t rc = ble_gap_adv_stop();
        if (rc) {
            ESP_LOGD(TAG, "Error in stopping advertisement with err code = %d",
                     rc);
        }

        ret = nimble_port_stop();
        if (ret == 0) {
            nimble_port_deinit();
            ret = esp_nimble_hci_and_controller_deinit();
            if (ret != ESP_OK) {
                ESP_LOGE(TAG, "esp_nimble_hci_and_controller_deinit() failed with error: %d", ret);
            }
        }

        free_gatt_ble_misc_memory(ble_cfg_p);
        protocomm_ble_cleanup();
        return ret;
    }
    return ESP_ERR_INVALID_ARG;
}
