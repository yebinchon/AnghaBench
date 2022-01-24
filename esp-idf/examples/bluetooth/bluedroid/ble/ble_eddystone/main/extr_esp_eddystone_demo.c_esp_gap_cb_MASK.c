#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int esp_gap_ble_cb_event_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  esp_eddystone_result_t ;
struct TYPE_8__ {int /*<<< orphan*/  status; } ;
struct TYPE_7__ {int /*<<< orphan*/  rssi; int /*<<< orphan*/  bda; int /*<<< orphan*/  adv_data_len; int /*<<< orphan*/  ble_adv; int /*<<< orphan*/  search_evt; } ;
struct TYPE_6__ {int /*<<< orphan*/  status; } ;
struct TYPE_9__ {TYPE_3__ scan_stop_cmpl; TYPE_2__ scan_rst; TYPE_1__ scan_start_cmpl; } ;
typedef  TYPE_4__ esp_ble_gap_cb_param_t ;
typedef  int /*<<< orphan*/  eddystone_res ;

/* Variables and functions */
 int /*<<< orphan*/  DEMO_TAG ; 
 int /*<<< orphan*/  ESP_BD_ADDR_LEN ; 
 int /*<<< orphan*/  ESP_BT_STATUS_SUCCESS ; 
#define  ESP_GAP_BLE_SCAN_PARAM_SET_COMPLETE_EVT 132 
#define  ESP_GAP_BLE_SCAN_RESULT_EVT 131 
#define  ESP_GAP_BLE_SCAN_START_COMPLETE_EVT 130 
#define  ESP_GAP_BLE_SCAN_STOP_COMPLETE_EVT 129 
#define  ESP_GAP_SEARCH_INQ_RES_EVT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t* param)
{
    esp_err_t err;

    switch(event)
    {
        case ESP_GAP_BLE_SCAN_PARAM_SET_COMPLETE_EVT: {
            uint32_t duration = 0;
            FUNC2(duration);
            break;
        }
        case ESP_GAP_BLE_SCAN_START_COMPLETE_EVT: {
            if((err = param->scan_start_cmpl.status) != ESP_BT_STATUS_SUCCESS) {
                FUNC0(DEMO_TAG,"Scan start failed: %s", FUNC5(err));
            }
            else {
                FUNC1(DEMO_TAG,"Start scanning...");
            }
            break;
        }
        case ESP_GAP_BLE_SCAN_RESULT_EVT: {
            esp_ble_gap_cb_param_t* scan_result = (esp_ble_gap_cb_param_t*)param;
            switch(scan_result->scan_rst.search_evt)
            {
                case ESP_GAP_SEARCH_INQ_RES_EVT: {
                    esp_eddystone_result_t eddystone_res;
                    FUNC7(&eddystone_res, 0, sizeof(eddystone_res));
                    esp_err_t ret = FUNC3(scan_result->scan_rst.ble_adv, scan_result->scan_rst.adv_data_len, &eddystone_res);
                    if (ret) {
                        // error:The received data is not an eddystone frame packet or a correct eddystone frame packet.
                        // just return
                        return;
                    } else {   
                        // The received adv data is a correct eddystone frame packet.
                        // Here, we get the eddystone infomation in eddystone_res, we can use the data in res to do other things.
                        // For example, just print them:
                        FUNC1(DEMO_TAG, "--------Eddystone Found----------");
                        FUNC6("EDDYSTONE_DEMO: Device address:", scan_result->scan_rst.bda, ESP_BD_ADDR_LEN);
                        FUNC1(DEMO_TAG, "RSSI of packet:%d dbm", scan_result->scan_rst.rssi);
                        FUNC4(&eddystone_res);
                    }
                    break;
                }
                default:
                    break;
            }
            break;
        }
        case ESP_GAP_BLE_SCAN_STOP_COMPLETE_EVT:{
            if((err = param->scan_stop_cmpl.status) != ESP_BT_STATUS_SUCCESS) {
                FUNC0(DEMO_TAG,"Scan stop failed: %s", FUNC5(err));
            }
            else {
                FUNC1(DEMO_TAG,"Stop scan successfully");
            }
            break;
        }
        default:
            break;
    }
}