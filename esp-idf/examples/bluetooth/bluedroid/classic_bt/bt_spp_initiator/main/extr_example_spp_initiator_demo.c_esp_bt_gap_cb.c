
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char* esp_bt_pin_code_t ;
struct TYPE_14__ {int passkey; } ;
struct TYPE_13__ {int bda; int num_val; } ;
struct TYPE_12__ {int bda; int min_16_digit; } ;
struct TYPE_11__ {int stat; int bda; int device_name; } ;
struct TYPE_10__ {int num_prop; int bda; TYPE_1__* prop; } ;
struct TYPE_15__ {TYPE_6__ key_notif; TYPE_5__ cfm_req; TYPE_4__ pin_req; TYPE_3__ auth_cmpl; TYPE_2__ disc_res; } ;
typedef TYPE_7__ esp_bt_gap_cb_param_t ;
typedef int esp_bt_gap_cb_event_t ;
struct TYPE_9__ {int val; int type; } ;


 int ESP_BD_ADDR_LEN ;


 int ESP_BT_GAP_DEV_PROP_EIR ;







 int ESP_BT_STATUS_SUCCESS ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int SPP_TAG ;
 int esp_bt_gap_cancel_discovery () ;
 int esp_bt_gap_pin_reply (int ,int,int,char*) ;
 int esp_bt_gap_ssp_confirm_reply (int ,int) ;
 int esp_log_buffer_char (int ,int ,int ) ;
 int esp_log_buffer_hex (int ,int ,int ) ;
 int esp_spp_start_discovery (int ) ;
 int get_name_from_eir (int ,int ,int *) ;
 int memcpy (int ,int ,int ) ;
 int peer_bd_addr ;
 int peer_bdname ;
 int peer_bdname_len ;
 int remote_device_name ;
 int strlen (int ) ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static void esp_bt_gap_cb(esp_bt_gap_cb_event_t event, esp_bt_gap_cb_param_t *param)
{
    switch(event){
    case 134:
        ESP_LOGI(SPP_TAG, "ESP_BT_GAP_DISC_RES_EVT");
        esp_log_buffer_hex(SPP_TAG, param->disc_res.bda, ESP_BD_ADDR_LEN);
        for (int i = 0; i < param->disc_res.num_prop; i++){
            if (param->disc_res.prop[i].type == ESP_BT_GAP_DEV_PROP_EIR
                && get_name_from_eir(param->disc_res.prop[i].val, peer_bdname, &peer_bdname_len)){
                esp_log_buffer_char(SPP_TAG, peer_bdname, peer_bdname_len);
                if (strlen(remote_device_name) == peer_bdname_len
                    && strncmp(peer_bdname, remote_device_name, peer_bdname_len) == 0) {
                    memcpy(peer_bd_addr, param->disc_res.bda, ESP_BD_ADDR_LEN);
                    esp_spp_start_discovery(peer_bd_addr);
                    esp_bt_gap_cancel_discovery();
                }
            }
        }
        break;
    case 133:
        ESP_LOGI(SPP_TAG, "ESP_BT_GAP_DISC_STATE_CHANGED_EVT");
        break;
    case 129:
        ESP_LOGI(SPP_TAG, "ESP_BT_GAP_RMT_SRVCS_EVT");
        break;
    case 128:
        ESP_LOGI(SPP_TAG, "ESP_BT_GAP_RMT_SRVC_REC_EVT");
        break;
    case 136:{
        if (param->auth_cmpl.stat == ESP_BT_STATUS_SUCCESS) {
            ESP_LOGI(SPP_TAG, "authentication success: %s", param->auth_cmpl.device_name);
            esp_log_buffer_hex(SPP_TAG, param->auth_cmpl.bda, ESP_BD_ADDR_LEN);
        } else {
            ESP_LOGE(SPP_TAG, "authentication failed, status:%d", param->auth_cmpl.stat);
        }
        break;
    }
    case 130:{
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
    default:
        break;
    }
}
