
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
typedef int uint32_t ;
typedef int esp_gap_ble_cb_event_t ;
struct TYPE_13__ {int status; } ;
struct TYPE_12__ {int status; } ;
struct TYPE_11__ {int ble_addr_type; int bda; int ble_adv; int scan_rsp_len; int adv_data_len; int search_evt; } ;
struct TYPE_10__ {int status; } ;
struct TYPE_9__ {int timeout; int latency; int conn_int; int max_int; int min_int; int status; } ;
struct TYPE_14__ {TYPE_5__ adv_stop_cmpl; TYPE_4__ scan_stop_cmpl; TYPE_3__ scan_rst; TYPE_2__ scan_start_cmpl; TYPE_1__ update_conn_params; } ;
typedef TYPE_6__ esp_ble_gap_cb_param_t ;
struct TYPE_15__ {int gattc_if; } ;


 int ESP_BLE_AD_TYPE_NAME_CMPL ;
 int ESP_BT_STATUS_SUCCESS ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,...) ;
 int GATTC_TAG ;
 int Isconnecting ;
 size_t PROFILE_A_APP_ID ;
 size_t PROFILE_B_APP_ID ;
 size_t PROFILE_C_APP_ID ;
 int conn_device_a ;
 int conn_device_b ;
 int conn_device_c ;
 int esp_ble_gap_start_scanning (int) ;
 int esp_ble_gap_stop_scanning () ;
 int esp_ble_gattc_open (int ,int ,int ,int) ;
 int * esp_ble_resolve_adv_data (int ,int ,int *) ;
 int esp_log_buffer_char (int ,int *,int ) ;
 int esp_log_buffer_hex (int ,int ,int) ;
 TYPE_7__* gl_profile_tab ;
 int * remote_device_name ;
 int stop_scan_done ;
 int strlen (int ) ;
 int strncmp (char*,int ,int ) ;

__attribute__((used)) static void esp_gap_cb(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    uint8_t *adv_name = ((void*)0);
    uint8_t adv_name_len = 0;
    switch (event) {
    case 130:
         ESP_LOGI(GATTC_TAG, "update connection params status = %d, min_int = %d, max_int = %d,conn_int = %d,latency = %d, timeout = %d",
                  param->update_conn_params.status,
                  param->update_conn_params.min_int,
                  param->update_conn_params.max_int,
                  param->update_conn_params.conn_int,
                  param->update_conn_params.latency,
                  param->update_conn_params.timeout);
        break;
    case 134: {

        uint32_t duration = 30;
        esp_ble_gap_start_scanning(duration);
        break;
    }
    case 132:

        if (param->scan_start_cmpl.status == ESP_BT_STATUS_SUCCESS) {
            ESP_LOGI(GATTC_TAG, "Scan start success");
        }else{
            ESP_LOGE(GATTC_TAG, "Scan start failed");
        }
        break;
    case 133: {
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
            if (Isconnecting){
                break;
            }
            if (conn_device_a && conn_device_b && conn_device_c && !stop_scan_done){
                stop_scan_done = 1;
                esp_ble_gap_stop_scanning();
                ESP_LOGI(GATTC_TAG, "all devices are connected");
                break;
            }
            if (adv_name != ((void*)0)) {

                if (strlen(remote_device_name[0]) == adv_name_len && strncmp((char *)adv_name, remote_device_name[0], adv_name_len) == 0) {
                    if (conn_device_a == 0) {
                        conn_device_a = 1;
                        ESP_LOGI(GATTC_TAG, "Searched device %s", remote_device_name[0]);
                        esp_ble_gap_stop_scanning();
                        esp_ble_gattc_open(gl_profile_tab[PROFILE_A_APP_ID].gattc_if, scan_result->scan_rst.bda, scan_result->scan_rst.ble_addr_type, 1);
                        Isconnecting = 1;
                    }
                    break;
                }
                else if (strlen(remote_device_name[1]) == adv_name_len && strncmp((char *)adv_name, remote_device_name[1], adv_name_len) == 0) {
                    if (conn_device_b == 0) {
                        conn_device_b = 1;
                        ESP_LOGI(GATTC_TAG, "Searched device %s", remote_device_name[1]);
                        esp_ble_gap_stop_scanning();
                        esp_ble_gattc_open(gl_profile_tab[PROFILE_B_APP_ID].gattc_if, scan_result->scan_rst.bda, scan_result->scan_rst.ble_addr_type, 1);
                        Isconnecting = 1;

                    }
                }
                else if (strlen(remote_device_name[2]) == adv_name_len && strncmp((char *)adv_name, remote_device_name[2], adv_name_len) == 0) {
                    if (conn_device_c == 0) {
                        conn_device_c = 1;
                        ESP_LOGI(GATTC_TAG, "Searched device %s", remote_device_name[2]);
                        esp_ble_gap_stop_scanning();
                        esp_ble_gattc_open(gl_profile_tab[PROFILE_C_APP_ID].gattc_if, scan_result->scan_rst.bda, scan_result->scan_rst.ble_addr_type, 1);
                        Isconnecting = 1;
                    }
                    break;
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

    case 131:
        if (param->scan_stop_cmpl.status != ESP_BT_STATUS_SUCCESS){
            ESP_LOGE(GATTC_TAG, "Scan stop failed");
            break;
        }
        ESP_LOGI(GATTC_TAG, "Stop scan successfully");

        break;

    case 135:
        if (param->adv_stop_cmpl.status != ESP_BT_STATUS_SUCCESS){
            ESP_LOGE(GATTC_TAG, "Adv stop failed");
            break;
        }
        ESP_LOGI(GATTC_TAG, "Stop adv successfully");
        break;

    default:
        break;
    }
}
