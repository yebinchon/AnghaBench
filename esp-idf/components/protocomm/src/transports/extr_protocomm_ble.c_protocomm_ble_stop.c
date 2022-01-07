
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int protocomm_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {int * pc_ble; } ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 TYPE_1__* protoble_internal ;
 int protocomm_ble_cleanup () ;
 int simple_ble_deinit () ;
 scalar_t__ simple_ble_stop () ;

esp_err_t protocomm_ble_stop(protocomm_t *pc)
{
    if ((pc != ((void*)0)) &&
        (protoble_internal != ((void*)0) ) &&
        (pc == protoble_internal->pc_ble)) {
        esp_err_t ret = ESP_OK;
        ret = simple_ble_stop();
        if (ret) {
            ESP_LOGE(TAG, "BLE stop failed");
        }
        simple_ble_deinit();
        protocomm_ble_cleanup();
        return ret;
    }
    return ESP_ERR_INVALID_ARG;
}
