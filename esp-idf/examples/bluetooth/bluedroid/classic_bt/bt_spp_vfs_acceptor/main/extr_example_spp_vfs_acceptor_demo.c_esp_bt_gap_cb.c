
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char* esp_bt_pin_code_t ;
struct TYPE_10__ {int passkey; } ;
struct TYPE_9__ {int num_val; int bda; } ;
struct TYPE_8__ {int min_16_digit; int bda; } ;
struct TYPE_7__ {int device_name; int stat; int bda; } ;
struct TYPE_11__ {TYPE_4__ key_notif; TYPE_3__ cfm_req; TYPE_2__ pin_req; TYPE_1__ auth_cmpl; } ;
typedef TYPE_5__ esp_bt_gap_cb_param_t ;
typedef int esp_bt_gap_cb_event_t ;


 int ESP_BD_ADDR_LEN ;





 int ESP_BT_STATUS_SUCCESS ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int SPP_TAG ;
 int esp_bt_gap_pin_reply (int ,int,int,char*) ;
 int esp_bt_gap_ssp_confirm_reply (int ,int) ;
 int esp_log_buffer_hex (int ,int ,int ) ;

void esp_bt_gap_cb(esp_bt_gap_cb_event_t event, esp_bt_gap_cb_param_t *param)
{
    switch (event) {
    case 132:{
        if (param->auth_cmpl.stat == ESP_BT_STATUS_SUCCESS) {
            ESP_LOGI(SPP_TAG, "authentication success: %s", param->auth_cmpl.device_name);
            esp_log_buffer_hex(SPP_TAG, param->auth_cmpl.bda, ESP_BD_ADDR_LEN);
        } else {
            ESP_LOGE(SPP_TAG, "authentication failed, status:%d", param->auth_cmpl.stat);
        }
        break;
    }
    case 128:{
        ESP_LOGI(SPP_TAG, "ESP_BT_GAP_PIN_REQ_EVT min_16_digit:%d", param->pin_req.min_16_digit);
        if (param->pin_req.min_16_digit) {
            ESP_LOGI(SPP_TAG, "Input pin code: 0000 0000 0000 0000");
            esp_bt_pin_code_t pin_code = {0};
            esp_bt_gap_pin_reply(param->pin_req.bda, 1, 16, pin_code);
        } else {
            ESP_LOGI(SPP_TAG, "Input pin code: 1234");
            esp_bt_pin_code_t pin_code;
            pin_code[0] = '1';
            pin_code[1] = '2';
            pin_code[2] = '3';
            pin_code[3] = '4';
            esp_bt_gap_pin_reply(param->pin_req.bda, 1, 4, pin_code);
        }
        break;
    }
    default: {
        ESP_LOGI(SPP_TAG, "event: %d", event);
        break;
    }
    }
    return;
}
