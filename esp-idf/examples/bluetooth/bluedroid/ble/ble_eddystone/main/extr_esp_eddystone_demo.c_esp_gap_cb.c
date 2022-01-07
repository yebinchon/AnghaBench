
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int esp_gap_ble_cb_event_t ;
typedef int esp_err_t ;
typedef int esp_eddystone_result_t ;
struct TYPE_8__ {int status; } ;
struct TYPE_7__ {int rssi; int bda; int adv_data_len; int ble_adv; int search_evt; } ;
struct TYPE_6__ {int status; } ;
struct TYPE_9__ {TYPE_3__ scan_stop_cmpl; TYPE_2__ scan_rst; TYPE_1__ scan_start_cmpl; } ;
typedef TYPE_4__ esp_ble_gap_cb_param_t ;
typedef int eddystone_res ;


 int DEMO_TAG ;
 int ESP_BD_ADDR_LEN ;
 int ESP_BT_STATUS_SUCCESS ;





 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int esp_ble_gap_start_scanning (int ) ;
 int esp_eddystone_decode (int ,int ,int *) ;
 int esp_eddystone_show_inform (int *) ;
 int esp_err_to_name (int ) ;
 int esp_log_buffer_hex (char*,int ,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void esp_gap_cb(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t* param)
{
    esp_err_t err;

    switch(event)
    {
        case 132: {
            uint32_t duration = 0;
            esp_ble_gap_start_scanning(duration);
            break;
        }
        case 130: {
            if((err = param->scan_start_cmpl.status) != ESP_BT_STATUS_SUCCESS) {
                ESP_LOGE(DEMO_TAG,"Scan start failed: %s", esp_err_to_name(err));
            }
            else {
                ESP_LOGI(DEMO_TAG,"Start scanning...");
            }
            break;
        }
        case 131: {
            esp_ble_gap_cb_param_t* scan_result = (esp_ble_gap_cb_param_t*)param;
            switch(scan_result->scan_rst.search_evt)
            {
                case 128: {
                    esp_eddystone_result_t eddystone_res;
                    memset(&eddystone_res, 0, sizeof(eddystone_res));
                    esp_err_t ret = esp_eddystone_decode(scan_result->scan_rst.ble_adv, scan_result->scan_rst.adv_data_len, &eddystone_res);
                    if (ret) {


                        return;
                    } else {



                        ESP_LOGI(DEMO_TAG, "--------Eddystone Found----------");
                        esp_log_buffer_hex("EDDYSTONE_DEMO: Device address:", scan_result->scan_rst.bda, ESP_BD_ADDR_LEN);
                        ESP_LOGI(DEMO_TAG, "RSSI of packet:%d dbm", scan_result->scan_rst.rssi);
                        esp_eddystone_show_inform(&eddystone_res);
                    }
                    break;
                }
                default:
                    break;
            }
            break;
        }
        case 129:{
            if((err = param->scan_stop_cmpl.status) != ESP_BT_STATUS_SUCCESS) {
                ESP_LOGE(DEMO_TAG,"Scan stop failed: %s", esp_err_to_name(err));
            }
            else {
                ESP_LOGI(DEMO_TAG,"Stop scan successfully");
            }
            break;
        }
        default:
            break;
    }
}
