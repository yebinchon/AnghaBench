
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int esp_gap_ble_cb_event_t ;
struct TYPE_15__ {int ble_addr_type; int bda; int ble_adv; int search_evt; } ;
struct TYPE_14__ {int status; } ;
struct TYPE_13__ {int status; } ;
struct TYPE_12__ {int timeout; int latency; int conn_int; int max_int; int min_int; int status; } ;
struct TYPE_11__ {int status; } ;
struct TYPE_10__ {int status; } ;
struct TYPE_16__ {TYPE_6__ scan_rst; TYPE_5__ scan_start_cmpl; TYPE_4__ scan_stop_cmpl; TYPE_3__ update_conn_params; TYPE_2__ adv_stop_cmpl; TYPE_1__ adv_start_cmpl; } ;
typedef TYPE_7__ esp_ble_gap_cb_param_t ;
struct TYPE_17__ {int gattc_if; } ;


 int COEX_TAG ;
 int ESP_BLE_AD_TYPE_NAME_CMPL ;
 int ESP_BT_STATUS_SUCCESS ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,...) ;
 size_t GATTC_PROFILE_C_APP_ID ;
 int adv_config_done ;
 int adv_config_flag ;
 int adv_params ;
 int connect ;
 int esp_ble_gap_start_advertising (int *) ;
 int esp_ble_gap_start_scanning (int) ;
 int esp_ble_gap_stop_scanning () ;
 int esp_ble_gattc_open (int ,int ,int ,int) ;
 int * esp_ble_resolve_adv_data (int ,int ,int *) ;
 TYPE_8__* gattc_profile_tab ;
 int remote_device_name ;
 int scan_rsp_config_flag ;
 int strlen (int ) ;
 int strncmp (char*,int ,int ) ;

__attribute__((used)) static void gap_event_handler(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    uint8_t *adv_name = ((void*)0);
    uint8_t adv_name_len = 0;

    switch (event) {

    case 138:
        adv_config_done &= (~adv_config_flag);
        if (adv_config_done == 0) {
            esp_ble_gap_start_advertising(&adv_params);
        }
        break;
    case 133:
        adv_config_done &= (~scan_rsp_config_flag);
        if (adv_config_done == 0) {
            esp_ble_gap_start_advertising(&adv_params);
        }
        break;

    case 137:

        if (param->adv_start_cmpl.status != ESP_BT_STATUS_SUCCESS) {
            ESP_LOGE(COEX_TAG, "Advertising start failed\n");
        }
        ESP_LOGI(COEX_TAG, "Advertising start successfully\n");
        break;
    case 136:
        if (param->adv_stop_cmpl.status != ESP_BT_STATUS_SUCCESS) {
            ESP_LOGE(COEX_TAG, "Advertising stop failed\n");
        } else {
            ESP_LOGI(COEX_TAG, "Stop adv successfully\n");
        }
        break;
    case 130:
         ESP_LOGI(COEX_TAG, "update connection params status = %d, min_int = %d, max_int = %d,conn_int = %d,latency = %d, timeout = %d\n",
                  param->update_conn_params.status,
                  param->update_conn_params.min_int,
                  param->update_conn_params.max_int,
                  param->update_conn_params.conn_int,
                  param->update_conn_params.latency,
                  param->update_conn_params.timeout);
        break;
    case 131:
        if (param->scan_stop_cmpl.status != ESP_BT_STATUS_SUCCESS) {
            ESP_LOGE(COEX_TAG, "scan stop failed, error status = %x\n", param->scan_stop_cmpl.status);
            break;
        }
        ESP_LOGI(COEX_TAG, "ESP_GAP_BLE_SCAN_STOP_COMPLETE_EVT, stop scan successfully\n");
        break;
    case 135: {
        ESP_LOGI(COEX_TAG, "ESP_GAP_BLE_SCAN_PARAM_SET_COMPLETE_EVT, set scan sparameters complete\n");

        uint32_t duration = 120;
        esp_ble_gap_start_scanning(duration);
        break;
    }
    case 132:
        if (param->scan_start_cmpl.status != ESP_BT_STATUS_SUCCESS) {
            ESP_LOGE(COEX_TAG, "scan start failed, error status = %x\n", param->scan_start_cmpl.status);
            break;
        }
        ESP_LOGI(COEX_TAG, "ESP_GAP_BLE_SCAN_START_COMPLETE_EVT, scan start success\n");
        break;
    case 134: {
        esp_ble_gap_cb_param_t *scan_result = (esp_ble_gap_cb_param_t *)param;
        switch (scan_result->scan_rst.search_evt) {
        case 128:
            adv_name = esp_ble_resolve_adv_data(scan_result->scan_rst.ble_adv,
                                                ESP_BLE_AD_TYPE_NAME_CMPL, &adv_name_len);
            if (adv_name != ((void*)0)) {
                if (strlen(remote_device_name) == adv_name_len && strncmp((char *)adv_name, remote_device_name, adv_name_len) == 0) {
                    if (connect == 0) {
                        connect = 1;
                        ESP_LOGI(COEX_TAG, "connect to the remote device %s\n", remote_device_name);
                        esp_ble_gap_stop_scanning();
                        esp_ble_gattc_open(gattc_profile_tab[GATTC_PROFILE_C_APP_ID].gattc_if, scan_result->scan_rst.bda, scan_result->scan_rst.ble_addr_type, 1);
                    }
                }
            }
            break;
        case 129:
             ESP_LOGI(COEX_TAG, "ESP_GAP_SEARCH_INQ_CMPL_EVT, scan stop\n");
            break;
        default:
            break;
        }
        break;
    }
    default:
        break;
    }
}
