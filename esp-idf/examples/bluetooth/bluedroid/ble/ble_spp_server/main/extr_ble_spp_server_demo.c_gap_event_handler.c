
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_gap_ble_cb_event_t ;
typedef int esp_err_t ;
struct TYPE_4__ {int status; } ;
struct TYPE_5__ {TYPE_1__ adv_start_cmpl; } ;
typedef TYPE_2__ esp_ble_gap_cb_param_t ;


 int ESP_BT_STATUS_SUCCESS ;


 int ESP_LOGE (int ,char*,int) ;
 int GATTS_TABLE_TAG ;
 int esp_ble_gap_start_advertising (int *) ;
 int esp_err_to_name (int ) ;
 int spp_adv_params ;

__attribute__((used)) static void gap_event_handler(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    esp_err_t err;
    ESP_LOGE(GATTS_TABLE_TAG, "GAP_EVT, event %d\n", event);

    switch (event) {
    case 129:
        esp_ble_gap_start_advertising(&spp_adv_params);
        break;
    case 128:

        if((err = param->adv_start_cmpl.status) != ESP_BT_STATUS_SUCCESS) {
            ESP_LOGE(GATTS_TABLE_TAG, "Advertising start failed: %s\n", esp_err_to_name(err));
        }
        break;
    default:
        break;
    }
}
