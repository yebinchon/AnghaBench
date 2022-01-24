#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int esp_gap_ble_cb_event_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_12__ {int /*<<< orphan*/  measured_power; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; int /*<<< orphan*/  proximity_uuid; } ;
struct TYPE_16__ {TYPE_3__ ibeacon_vendor; } ;
typedef  TYPE_7__ esp_ble_ibeacon_t ;
struct TYPE_15__ {int /*<<< orphan*/  status; } ;
struct TYPE_14__ {int /*<<< orphan*/  status; } ;
struct TYPE_13__ {int /*<<< orphan*/  rssi; int /*<<< orphan*/  bda; scalar_t__ ble_adv; int /*<<< orphan*/  adv_data_len; int /*<<< orphan*/  search_evt; } ;
struct TYPE_11__ {int /*<<< orphan*/  status; } ;
struct TYPE_10__ {int /*<<< orphan*/  status; } ;
struct TYPE_17__ {TYPE_6__ adv_stop_cmpl; TYPE_5__ scan_stop_cmpl; TYPE_4__ scan_rst; TYPE_2__ adv_start_cmpl; TYPE_1__ scan_start_cmpl; } ;
typedef  TYPE_8__ esp_ble_gap_cb_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEMO_TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_BD_ADDR_LEN ; 
 int /*<<< orphan*/  ESP_BT_STATUS_SUCCESS ; 
#define  ESP_GAP_BLE_ADV_DATA_RAW_SET_COMPLETE_EVT 135 
#define  ESP_GAP_BLE_ADV_START_COMPLETE_EVT 134 
#define  ESP_GAP_BLE_ADV_STOP_COMPLETE_EVT 133 
#define  ESP_GAP_BLE_SCAN_PARAM_SET_COMPLETE_EVT 132 
#define  ESP_GAP_BLE_SCAN_RESULT_EVT 131 
#define  ESP_GAP_BLE_SCAN_START_COMPLETE_EVT 130 
#define  ESP_GAP_BLE_SCAN_STOP_COMPLETE_EVT 129 
#define  ESP_GAP_SEARCH_INQ_RES_EVT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_UUID_LEN_128 ; 
 int /*<<< orphan*/  ble_adv_params ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    esp_err_t err;

    switch (event) {
    case ESP_GAP_BLE_ADV_DATA_RAW_SET_COMPLETE_EVT:{
#if (IBEACON_MODE == IBEACON_SENDER)
        FUNC3(&ble_adv_params);
#endif
        break;
    }
    case ESP_GAP_BLE_SCAN_PARAM_SET_COMPLETE_EVT: {
#if (IBEACON_MODE == IBEACON_RECEIVER)
        //the unit of the duration is second, 0 means scan permanently
        uint32_t duration = 0;
        FUNC4(duration);
#endif
        break;
    }
    case ESP_GAP_BLE_SCAN_START_COMPLETE_EVT:
        //scan start complete event to indicate scan start successfully or failed
        if ((err = param->scan_start_cmpl.status) != ESP_BT_STATUS_SUCCESS) {
            FUNC1(DEMO_TAG, "Scan start failed: %s", FUNC6(err));
        }
        break;
    case ESP_GAP_BLE_ADV_START_COMPLETE_EVT:
        //adv start complete event to indicate adv start successfully or failed
        if ((err = param->adv_start_cmpl.status) != ESP_BT_STATUS_SUCCESS) {
            FUNC1(DEMO_TAG, "Adv start failed: %s", FUNC6(err));
        }
        break;
    case ESP_GAP_BLE_SCAN_RESULT_EVT: {
        esp_ble_gap_cb_param_t *scan_result = (esp_ble_gap_cb_param_t *)param;
        switch (scan_result->scan_rst.search_evt) {
        case ESP_GAP_SEARCH_INQ_RES_EVT:
            /* Search for BLE iBeacon Packet */
            if (FUNC5(scan_result->scan_rst.ble_adv, scan_result->scan_rst.adv_data_len)){
                esp_ble_ibeacon_t *ibeacon_data = (esp_ble_ibeacon_t*)(scan_result->scan_rst.ble_adv);
                FUNC2(DEMO_TAG, "----------iBeacon Found----------");
                FUNC7("IBEACON_DEMO: Device address:", scan_result->scan_rst.bda, ESP_BD_ADDR_LEN );
                FUNC7("IBEACON_DEMO: Proximity UUID:", ibeacon_data->ibeacon_vendor.proximity_uuid, ESP_UUID_LEN_128);

                uint16_t major = FUNC0(ibeacon_data->ibeacon_vendor.major);
                uint16_t minor = FUNC0(ibeacon_data->ibeacon_vendor.minor);
                FUNC2(DEMO_TAG, "Major: 0x%04x (%d)", major, major);
                FUNC2(DEMO_TAG, "Minor: 0x%04x (%d)", minor, minor);
                FUNC2(DEMO_TAG, "Measured power (RSSI at a 1m distance):%d dbm", ibeacon_data->ibeacon_vendor.measured_power);
                FUNC2(DEMO_TAG, "RSSI of packet:%d dbm", scan_result->scan_rst.rssi);
            }
            break;
        default:
            break;
        }
        break;
    }

    case ESP_GAP_BLE_SCAN_STOP_COMPLETE_EVT:
        if ((err = param->scan_stop_cmpl.status) != ESP_BT_STATUS_SUCCESS){
            FUNC1(DEMO_TAG, "Scan stop failed: %s", FUNC6(err));
        }
        else {
            FUNC2(DEMO_TAG, "Stop scan successfully");
        }
        break;

    case ESP_GAP_BLE_ADV_STOP_COMPLETE_EVT:
        if ((err = param->adv_stop_cmpl.status) != ESP_BT_STATUS_SUCCESS){
            FUNC1(DEMO_TAG, "Adv stop failed: %s", FUNC6(err));
        }
        else {
            FUNC2(DEMO_TAG, "Stop adv successfully");
        }
        break;

    default:
        break;
    }
}