
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


typedef int uint8_t ;
typedef int tk ;
typedef int esp_gap_ble_cb_event_t ;
typedef int esp_err_t ;
struct TYPE_14__ {int status; } ;
struct TYPE_12__ {char* fail_reason; int success; int bd_addr; } ;
struct TYPE_11__ {char* passkey; } ;
struct TYPE_10__ {int bd_addr; } ;
struct TYPE_13__ {TYPE_4__ auth_cmpl; TYPE_3__ key_notif; TYPE_2__ ble_req; } ;
struct TYPE_9__ {int status; } ;
struct TYPE_15__ {TYPE_6__ local_privacy_cmpl; TYPE_5__ ble_security; TYPE_1__ adv_start_cmpl; } ;
typedef TYPE_7__ esp_ble_gap_cb_param_t ;


 int ADV_CONFIG_FLAG ;
 int BLE_ANCS_TAG ;
 int ESP_BD_ADDR_LEN ;
 int ESP_BT_STATUS_SUCCESS ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_LOGV (int ,char*,int) ;
 int SCAN_RSP_CONFIG_FLAG ;
 int adv_config ;
 int adv_config_done ;
 int adv_params ;
 int esp_ble_confirm_reply (int ,int) ;
 int esp_ble_gap_config_adv_data (int *) ;
 int esp_ble_gap_security_rsp (int ,int) ;
 int esp_ble_gap_start_advertising (int *) ;
 int esp_ble_oob_req_reply (int ,int*,int) ;
 int esp_log_buffer_hex (char*,int ,int ) ;
 int scan_rsp_config ;

__attribute__((used)) static void gap_event_handler(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    ESP_LOGV(BLE_ANCS_TAG, "GAP_EVT, event %d\n", event);

    switch (event) {
    case 130:
        adv_config_done &= (~SCAN_RSP_CONFIG_FLAG);
        if (adv_config_done == 0) {
            esp_ble_gap_start_advertising(&adv_params);
        }
        break;
    case 137:
        adv_config_done &= (~ADV_CONFIG_FLAG);
        if (adv_config_done == 0) {
            esp_ble_gap_start_advertising(&adv_params);
        }
        break;
    case 136:

        if (param->adv_start_cmpl.status != ESP_BT_STATUS_SUCCESS) {
            ESP_LOGE(BLE_ANCS_TAG, "advertising start failed, error status = %x", param->adv_start_cmpl.status);
            break;
        }
        ESP_LOGI(BLE_ANCS_TAG, "advertising start success");
        break;
    case 131:
        ESP_LOGI(BLE_ANCS_TAG, "ESP_GAP_BLE_PASSKEY_REQ_EVT");


        break;
    case 133: {
        ESP_LOGI(BLE_ANCS_TAG, "ESP_GAP_BLE_OOB_REQ_EVT");
        uint8_t tk[16] = {1};
        esp_ble_oob_req_reply(param->ble_security.ble_req.bd_addr, tk, sizeof(tk));
        break;
    }
    case 134:


        esp_ble_confirm_reply(param->ble_security.ble_req.bd_addr, 1);
        ESP_LOGI(BLE_ANCS_TAG, "ESP_GAP_BLE_NC_REQ_EVT, the passkey Notify number:%d", param->ble_security.key_notif.passkey);
        break;
    case 129:


        esp_ble_gap_security_rsp(param->ble_security.ble_req.bd_addr, 1);
        break;
    case 132:

        ESP_LOGI(BLE_ANCS_TAG, "The passkey Notify number:%06d", param->ble_security.key_notif.passkey);
        break;
    case 135: {
        esp_log_buffer_hex("addr", param->ble_security.auth_cmpl.bd_addr, ESP_BD_ADDR_LEN);
        ESP_LOGI(BLE_ANCS_TAG, "pair status = %s",param->ble_security.auth_cmpl.success ? "success" : "fail");
        if (!param->ble_security.auth_cmpl.success) {
            ESP_LOGI(BLE_ANCS_TAG, "fail reason = 0x%x",param->ble_security.auth_cmpl.fail_reason);
        }
        break;
    }
    case 128:
        if (param->local_privacy_cmpl.status != ESP_BT_STATUS_SUCCESS) {
            ESP_LOGE(BLE_ANCS_TAG, "config local privacy failed, error status = %x", param->local_privacy_cmpl.status);
            break;
        }

        esp_err_t ret = esp_ble_gap_config_adv_data(&adv_config);
        if (ret) {
            ESP_LOGE(BLE_ANCS_TAG, "config adv data failed, error code = %x", ret);
        } else {
            adv_config_done |= ADV_CONFIG_FLAG;
        }

        ret = esp_ble_gap_config_adv_data(&scan_rsp_config);
        if (ret) {
            ESP_LOGE(BLE_ANCS_TAG, "config adv data failed, error code = %x", ret);
        } else {
            adv_config_done |= SCAN_RSP_CONFIG_FLAG;
        }

        break;
    default:
        break;
    }
}
