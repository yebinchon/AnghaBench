
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char* esp_bt_pin_code_t ;
struct TYPE_13__ {int passkey; } ;
struct TYPE_12__ {int num_val; int bda; } ;
struct TYPE_11__ {int min_16_digit; int bda; } ;
struct TYPE_10__ {int device_name; int stat; int bda; } ;
struct TYPE_9__ {int state; } ;
struct TYPE_14__ {TYPE_5__ key_notif; TYPE_4__ cfm_req; TYPE_3__ pin_req; TYPE_2__ auth_cmpl; TYPE_1__ disc_st_chg; } ;
typedef TYPE_6__ esp_bt_gap_cb_param_t ;
typedef int esp_bt_gap_cb_event_t ;


 int APP_AV_STATE_CONNECTING ;
 int APP_AV_STATE_DISCOVERED ;
 int BT_AV_TAG ;
 int ESP_BD_ADDR_LEN ;


 int ESP_BT_GAP_DISCOVERY_STARTED ;
 int ESP_BT_GAP_DISCOVERY_STOPPED ;







 int ESP_BT_INQ_MODE_GENERAL_INQUIRY ;
 int ESP_BT_STATUS_SUCCESS ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int esp_a2d_source_connect (int ) ;
 int esp_bt_gap_pin_reply (int ,int,int,char*) ;
 int esp_bt_gap_ssp_confirm_reply (int ,int) ;
 int esp_bt_gap_start_discovery (int ,int,int ) ;
 int esp_log_buffer_hex (int ,int ,int ) ;
 int filter_inquiry_scan_result (TYPE_6__*) ;
 int s_a2d_state ;
 int s_peer_bda ;
 int s_peer_bdname ;

void bt_app_gap_cb(esp_bt_gap_cb_event_t event, esp_bt_gap_cb_param_t *param)
{
    switch (event) {
    case 134: {
        filter_inquiry_scan_result(param);
        break;
    }
    case 133: {
        if (param->disc_st_chg.state == ESP_BT_GAP_DISCOVERY_STOPPED) {
            if (s_a2d_state == APP_AV_STATE_DISCOVERED) {
                s_a2d_state = APP_AV_STATE_CONNECTING;
                ESP_LOGI(BT_AV_TAG, "Device discovery stopped.");
                ESP_LOGI(BT_AV_TAG, "a2dp connecting to peer: %s", s_peer_bdname);
                esp_a2d_source_connect(s_peer_bda);
            } else {

                ESP_LOGI(BT_AV_TAG, "Device discovery failed, continue to discover...");
                esp_bt_gap_start_discovery(ESP_BT_INQ_MODE_GENERAL_INQUIRY, 10, 0);
            }
        } else if (param->disc_st_chg.state == ESP_BT_GAP_DISCOVERY_STARTED) {
            ESP_LOGI(BT_AV_TAG, "Discovery started.");
        }
        break;
    }
    case 129:
    case 128:
        break;
    case 136: {
        if (param->auth_cmpl.stat == ESP_BT_STATUS_SUCCESS) {
            ESP_LOGI(BT_AV_TAG, "authentication success: %s", param->auth_cmpl.device_name);
            esp_log_buffer_hex(BT_AV_TAG, param->auth_cmpl.bda, ESP_BD_ADDR_LEN);
        } else {
            ESP_LOGE(BT_AV_TAG, "authentication failed, status:%d", param->auth_cmpl.stat);
        }
        break;
    }
    case 130: {
        ESP_LOGI(BT_AV_TAG, "ESP_BT_GAP_PIN_REQ_EVT min_16_digit:%d", param->pin_req.min_16_digit);
        if (param->pin_req.min_16_digit) {
            ESP_LOGI(BT_AV_TAG, "Input pin code: 0000 0000 0000 0000");
            esp_bt_pin_code_t pin_code = {0};
            esp_bt_gap_pin_reply(param->pin_req.bda, 1, 16, pin_code);
        } else {
            ESP_LOGI(BT_AV_TAG, "Input pin code: 1234");
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
        ESP_LOGI(BT_AV_TAG, "event: %d", event);
        break;
    }
    }
    return;
}
