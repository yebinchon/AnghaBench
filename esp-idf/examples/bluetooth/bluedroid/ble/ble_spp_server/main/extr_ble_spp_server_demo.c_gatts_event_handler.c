
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ esp_gatts_cb_event_t ;
typedef scalar_t__ esp_gatt_if_t ;
struct TYPE_6__ {scalar_t__ status; scalar_t__ app_id; } ;
struct TYPE_7__ {TYPE_1__ reg; } ;
typedef TYPE_2__ esp_ble_gatts_cb_param_t ;
struct TYPE_8__ {scalar_t__ gatts_if; int (* gatts_cb ) (scalar_t__,scalar_t__,TYPE_2__*) ;} ;


 scalar_t__ ESP_GATTS_REG_EVT ;
 scalar_t__ ESP_GATT_IF_NONE ;
 scalar_t__ ESP_GATT_OK ;
 int ESP_LOGI (int ,char*,scalar_t__,scalar_t__) ;
 int GATTS_TABLE_TAG ;
 size_t SPP_PROFILE_APP_IDX ;
 int SPP_PROFILE_NUM ;
 TYPE_4__* spp_profile_tab ;
 int stub1 (scalar_t__,scalar_t__,TYPE_2__*) ;

__attribute__((used)) static void gatts_event_handler(esp_gatts_cb_event_t event, esp_gatt_if_t gatts_if, esp_ble_gatts_cb_param_t *param)
{
    ESP_LOGI(GATTS_TABLE_TAG, "EVT %d, gatts if %d\n", event, gatts_if);


    if (event == ESP_GATTS_REG_EVT) {
        if (param->reg.status == ESP_GATT_OK) {
            spp_profile_tab[SPP_PROFILE_APP_IDX].gatts_if = gatts_if;
        } else {
            ESP_LOGI(GATTS_TABLE_TAG, "Reg app failed, app_id %04x, status %d\n",param->reg.app_id, param->reg.status);
            return;
        }
    }

    do {
        int idx;
        for (idx = 0; idx < SPP_PROFILE_NUM; idx++) {
            if (gatts_if == ESP_GATT_IF_NONE ||
                    gatts_if == spp_profile_tab[idx].gatts_if) {
                if (spp_profile_tab[idx].gatts_cb) {
                    spp_profile_tab[idx].gatts_cb(event, gatts_if, param);
                }
            }
        }
    } while (0);
}
