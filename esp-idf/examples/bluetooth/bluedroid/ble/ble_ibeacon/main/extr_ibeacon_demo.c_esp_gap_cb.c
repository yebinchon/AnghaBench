
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


typedef int uint32_t ;
typedef int uint16_t ;
typedef int esp_gap_ble_cb_event_t ;
typedef int esp_err_t ;
struct TYPE_12__ {int measured_power; int minor; int major; int proximity_uuid; } ;
struct TYPE_16__ {TYPE_3__ ibeacon_vendor; } ;
typedef TYPE_7__ esp_ble_ibeacon_t ;
struct TYPE_15__ {int status; } ;
struct TYPE_14__ {int status; } ;
struct TYPE_13__ {int rssi; int bda; scalar_t__ ble_adv; int adv_data_len; int search_evt; } ;
struct TYPE_11__ {int status; } ;
struct TYPE_10__ {int status; } ;
struct TYPE_17__ {TYPE_6__ adv_stop_cmpl; TYPE_5__ scan_stop_cmpl; TYPE_4__ scan_rst; TYPE_2__ adv_start_cmpl; TYPE_1__ scan_start_cmpl; } ;
typedef TYPE_8__ esp_ble_gap_cb_param_t ;


 int DEMO_TAG ;
 int ENDIAN_CHANGE_U16 (int ) ;
 int ESP_BD_ADDR_LEN ;
 int ESP_BT_STATUS_SUCCESS ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_UUID_LEN_128 ;
 int ble_adv_params ;
 int esp_ble_gap_start_advertising (int *) ;
 int esp_ble_gap_start_scanning (int ) ;
 int esp_ble_is_ibeacon_packet (scalar_t__,int ) ;
 int esp_err_to_name (int ) ;
 int esp_log_buffer_hex (char*,int ,int ) ;

__attribute__((used)) static void esp_gap_cb(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    esp_err_t err;

    switch (event) {
    case 135:{

        esp_ble_gap_start_advertising(&ble_adv_params);

        break;
    }
    case 132: {


        uint32_t duration = 0;
        esp_ble_gap_start_scanning(duration);

        break;
    }
    case 130:

        if ((err = param->scan_start_cmpl.status) != ESP_BT_STATUS_SUCCESS) {
            ESP_LOGE(DEMO_TAG, "Scan start failed: %s", esp_err_to_name(err));
        }
        break;
    case 134:

        if ((err = param->adv_start_cmpl.status) != ESP_BT_STATUS_SUCCESS) {
            ESP_LOGE(DEMO_TAG, "Adv start failed: %s", esp_err_to_name(err));
        }
        break;
    case 131: {
        esp_ble_gap_cb_param_t *scan_result = (esp_ble_gap_cb_param_t *)param;
        switch (scan_result->scan_rst.search_evt) {
        case 128:

            if (esp_ble_is_ibeacon_packet(scan_result->scan_rst.ble_adv, scan_result->scan_rst.adv_data_len)){
                esp_ble_ibeacon_t *ibeacon_data = (esp_ble_ibeacon_t*)(scan_result->scan_rst.ble_adv);
                ESP_LOGI(DEMO_TAG, "----------iBeacon Found----------");
                esp_log_buffer_hex("IBEACON_DEMO: Device address:", scan_result->scan_rst.bda, ESP_BD_ADDR_LEN );
                esp_log_buffer_hex("IBEACON_DEMO: Proximity UUID:", ibeacon_data->ibeacon_vendor.proximity_uuid, ESP_UUID_LEN_128);

                uint16_t major = ENDIAN_CHANGE_U16(ibeacon_data->ibeacon_vendor.major);
                uint16_t minor = ENDIAN_CHANGE_U16(ibeacon_data->ibeacon_vendor.minor);
                ESP_LOGI(DEMO_TAG, "Major: 0x%04x (%d)", major, major);
                ESP_LOGI(DEMO_TAG, "Minor: 0x%04x (%d)", minor, minor);
                ESP_LOGI(DEMO_TAG, "Measured power (RSSI at a 1m distance):%d dbm", ibeacon_data->ibeacon_vendor.measured_power);
                ESP_LOGI(DEMO_TAG, "RSSI of packet:%d dbm", scan_result->scan_rst.rssi);
            }
            break;
        default:
            break;
        }
        break;
    }

    case 129:
        if ((err = param->scan_stop_cmpl.status) != ESP_BT_STATUS_SUCCESS){
            ESP_LOGE(DEMO_TAG, "Scan stop failed: %s", esp_err_to_name(err));
        }
        else {
            ESP_LOGI(DEMO_TAG, "Stop scan successfully");
        }
        break;

    case 133:
        if ((err = param->adv_stop_cmpl.status) != ESP_BT_STATUS_SUCCESS){
            ESP_LOGE(DEMO_TAG, "Adv stop failed: %s", esp_err_to_name(err));
        }
        else {
            ESP_LOGI(DEMO_TAG, "Stop adv successfully");
        }
        break;

    default:
        break;
    }
}
