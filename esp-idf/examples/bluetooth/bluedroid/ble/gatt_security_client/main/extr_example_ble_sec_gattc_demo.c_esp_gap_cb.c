
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int tk ;
typedef int esp_gap_ble_cb_event_t ;
typedef int esp_err_t ;
struct TYPE_23__ {int status; } ;
struct TYPE_22__ {int ble_addr_type; int bda; int ble_adv; int scan_rsp_len; int adv_data_len; int search_evt; } ;
struct TYPE_20__ {int auth_mode; int fail_reason; int success; int addr_type; int bd_addr; } ;
struct TYPE_19__ {int key_type; } ;
struct TYPE_18__ {int passkey; } ;
struct TYPE_17__ {int bd_addr; } ;
struct TYPE_21__ {TYPE_6__ auth_cmpl; TYPE_5__ ble_key; TYPE_4__ key_notif; TYPE_3__ ble_req; } ;
struct TYPE_16__ {int status; } ;
struct TYPE_15__ {int status; } ;
struct TYPE_13__ {TYPE_9__ scan_stop_cmpl; TYPE_8__ scan_rst; TYPE_7__ ble_security; TYPE_2__ scan_start_cmpl; TYPE_1__ local_privacy_cmpl; } ;
typedef TYPE_10__ esp_ble_gap_cb_param_t ;
typedef int* esp_bd_addr_t ;
struct TYPE_14__ {int gattc_if; } ;


 int ESP_BLE_AD_TYPE_NAME_CMPL ;
 int ESP_BT_STATUS_SUCCESS ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int GATTC_TAG ;
 size_t PROFILE_A_APP_ID ;
 int ble_scan_params ;
 int connect ;
 int esp_auth_req_to_str (int ) ;
 int esp_ble_confirm_reply (int ,int) ;
 int esp_ble_gap_security_rsp (int ,int) ;
 int esp_ble_gap_set_scan_params (int *) ;
 int esp_ble_gap_start_scanning (int) ;
 int esp_ble_gap_stop_scanning () ;
 int esp_ble_gattc_open (int ,int ,int ,int) ;
 int esp_ble_oob_req_reply (int ,int*,int) ;
 int* esp_ble_resolve_adv_data (int ,int ,int*) ;
 int esp_key_type_to_str (int ) ;
 int esp_log_buffer_char (int ,int*,int) ;
 int esp_log_buffer_hex (int ,int ,int) ;
 TYPE_11__* gl_profile_tab ;
 int memcpy (int*,int ,int) ;
 int remote_device_name ;
 int strlen (int ) ;
 int strncmp (char*,int ,int) ;

__attribute__((used)) static void esp_gap_cb(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    uint8_t *adv_name = ((void*)0);
    uint8_t adv_name_len = 0;
    switch (event) {
    case 130:
        if (param->local_privacy_cmpl.status != ESP_BT_STATUS_SUCCESS){
            ESP_LOGE(GATTC_TAG, "config local privacy failed, error code =%x", param->local_privacy_cmpl.status);
            break;
        }
        esp_err_t scan_ret = esp_ble_gap_set_scan_params(&ble_scan_params);
        if (scan_ret){
            ESP_LOGE(GATTC_TAG, "set scan params error, error code = %x", scan_ret);
        }
        break;
    case 135: {

        uint32_t duration = 30;
        esp_ble_gap_start_scanning(duration);
        break;
    }
    case 133:

        if (param->scan_start_cmpl.status != ESP_BT_STATUS_SUCCESS) {
            ESP_LOGE(GATTC_TAG, "scan start failed, error status = %x", param->scan_start_cmpl.status);
            break;
        }
        ESP_LOGI(GATTC_TAG, "Scan start success");
        break;
    case 136:


        ESP_LOGI(GATTC_TAG, "ESP_GAP_BLE_PASSKEY_REQ_EVT");
        break;
    case 138: {
        ESP_LOGI(GATTC_TAG, "ESP_GAP_BLE_OOB_REQ_EVT");
        uint8_t tk[16] = {1};
        esp_ble_oob_req_reply(param->ble_security.ble_req.bd_addr, tk, sizeof(tk));
        break;
    }
    case 140:
        ESP_LOGI(GATTC_TAG, "ESP_GAP_BLE_LOCAL_IR_EVT");
        break;
    case 141:
        ESP_LOGI(GATTC_TAG, "ESP_GAP_BLE_LOCAL_ER_EVT");
        break;
    case 131:


        esp_ble_gap_security_rsp(param->ble_security.ble_req.bd_addr, 1);
        break;
    case 139:


        esp_ble_confirm_reply(param->ble_security.ble_req.bd_addr, 1);
        ESP_LOGI(GATTC_TAG, "ESP_GAP_BLE_NC_REQ_EVT, the passkey Notify number:%d", param->ble_security.key_notif.passkey);
        break;
    case 137:

        ESP_LOGI(GATTC_TAG, "The passkey Notify number:%06d", param->ble_security.key_notif.passkey);
        break;
    case 142:

        ESP_LOGI(GATTC_TAG, "key type = %s", esp_key_type_to_str(param->ble_security.ble_key.key_type));
        break;
    case 143: {
        esp_bd_addr_t bd_addr;
        memcpy(bd_addr, param->ble_security.auth_cmpl.bd_addr, sizeof(esp_bd_addr_t));
        ESP_LOGI(GATTC_TAG, "remote BD_ADDR: %08x%04x", (bd_addr[0] << 24) + (bd_addr[1] << 16) + (bd_addr[2] << 8) + bd_addr[3],

                (bd_addr[4] << 8) + bd_addr[5]);
        ESP_LOGI(GATTC_TAG, "address type = %d", param->ble_security.auth_cmpl.addr_type);
        ESP_LOGI(GATTC_TAG, "pair status = %s",param->ble_security.auth_cmpl.success ? "success" : "fail");
        if (!param->ble_security.auth_cmpl.success) {
            ESP_LOGI(GATTC_TAG, "fail reason = 0x%x",param->ble_security.auth_cmpl.fail_reason);
        } else {
            ESP_LOGI(GATTC_TAG, "auth mode = %s",esp_auth_req_to_str(param->ble_security.auth_cmpl.auth_mode));
        }
        break;
    }
    case 134: {
        esp_ble_gap_cb_param_t *scan_result = (esp_ble_gap_cb_param_t *)param;
        switch (scan_result->scan_rst.search_evt) {
        case 128:
            esp_log_buffer_hex(GATTC_TAG, scan_result->scan_rst.bda, 6);
            ESP_LOGI(GATTC_TAG, "Searched Adv Data Len %d, Scan Response Len %d", scan_result->scan_rst.adv_data_len, scan_result->scan_rst.scan_rsp_len);
            adv_name = esp_ble_resolve_adv_data(scan_result->scan_rst.ble_adv,
                                                ESP_BLE_AD_TYPE_NAME_CMPL, &adv_name_len);
            ESP_LOGI(GATTC_TAG, "Searched Device Name Len %d", adv_name_len);
            esp_log_buffer_char(GATTC_TAG, adv_name, adv_name_len);
            ESP_LOGI(GATTC_TAG, "\n");
            if (adv_name != ((void*)0)) {
                if (strlen(remote_device_name) == adv_name_len && strncmp((char *)adv_name, remote_device_name, adv_name_len) == 0) {
                    ESP_LOGI(GATTC_TAG, "searched device %s\n", remote_device_name);
                    if (connect == 0) {
                        connect = 1;
                        ESP_LOGI(GATTC_TAG, "connect to the remote device.");
                        esp_ble_gap_stop_scanning();
                        esp_ble_gattc_open(gl_profile_tab[PROFILE_A_APP_ID].gattc_if, scan_result->scan_rst.bda, scan_result->scan_rst.ble_addr_type, 1);
                    }
                }
            }
            break;
        case 129:
            break;
        default:
            break;
        }
        break;
    }

    case 132:
        if (param->scan_stop_cmpl.status != ESP_BT_STATUS_SUCCESS){
            ESP_LOGE(GATTC_TAG, "Scan stop failed, error status = %x", param->scan_stop_cmpl.status);
            break;
        }
        ESP_LOGI(GATTC_TAG, "Stop scan successfully");
        break;

    default:
        break;
    }
}
