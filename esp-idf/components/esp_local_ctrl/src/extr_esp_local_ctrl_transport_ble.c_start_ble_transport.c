
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int protocomm_t ;
struct TYPE_3__ {int ble; } ;
typedef TYPE_1__ esp_local_ctrl_transport_config_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int protocomm_ble_start (int *,int ) ;

__attribute__((used)) static esp_err_t start_ble_transport(protocomm_t *pc, const esp_local_ctrl_transport_config_t *config)
{
    if (!config || !config->ble) {
        ESP_LOGE(TAG, "NULL configuration provided");
        return ESP_ERR_INVALID_ARG;
    }
    return protocomm_ble_start(pc, config->ble);
}
