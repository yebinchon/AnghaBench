
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int passkey; } ;
struct TYPE_6__ {int num_val; int bda; } ;
struct TYPE_8__ {int device_name; int stat; int bda; } ;
struct TYPE_9__ {TYPE_2__ key_notif; TYPE_1__ cfm_req; TYPE_3__ auth_cmpl; } ;
typedef TYPE_4__ esp_bt_gap_cb_param_t ;
typedef int esp_bt_gap_cb_event_t ;


 int BT_BLE_COEX_TAG ;
 int ESP_BD_ADDR_LEN ;




 int ESP_BT_STATUS_SUCCESS ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int esp_bt_gap_ssp_confirm_reply (int ,int) ;
 int esp_log_buffer_hex (int ,int ,int ) ;

void bt_app_gap_cb(esp_bt_gap_cb_event_t event, esp_bt_gap_cb_param_t *param)
{
    switch (event) {
    case 131: {
        if (param->auth_cmpl.stat == ESP_BT_STATUS_SUCCESS) {
            ESP_LOGI(BT_BLE_COEX_TAG, "authentication success: %s", param->auth_cmpl.device_name);
            esp_log_buffer_hex(BT_BLE_COEX_TAG, param->auth_cmpl.bda, ESP_BD_ADDR_LEN);
        } else {
            ESP_LOGE(BT_BLE_COEX_TAG, "authentication failed, status:%d", param->auth_cmpl.stat);
        }
        break;
    }
    default: {
        ESP_LOGI(BT_BLE_COEX_TAG, "event: %d", event);
        break;
    }
    }
    return;
}
