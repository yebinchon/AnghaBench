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
typedef  int esp_gap_ble_cb_event_t ;
struct TYPE_7__ {char* addr_type; int /*<<< orphan*/  fail_reason; int /*<<< orphan*/  success; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/ * bd_addr; } ;
struct TYPE_8__ {TYPE_2__ auth_cmpl; TYPE_1__ ble_req; } ;
struct TYPE_9__ {TYPE_3__ ble_security; } ;
typedef  TYPE_4__ esp_ble_gap_cb_param_t ;
typedef  int* esp_bd_addr_t ;

/* Variables and functions */
 int ESP_BD_ADDR_LEN ; 
#define  ESP_GAP_BLE_ADV_DATA_SET_COMPLETE_EVT 130 
#define  ESP_GAP_BLE_AUTH_CMPL_EVT 129 
#define  ESP_GAP_BLE_SEC_REQ_EVT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  HID_DEMO_TAG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hidd_adv_params ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int sec_conn ; 

__attribute__((used)) static void FUNC6(esp_gap_ble_cb_event_t event, esp_ble_gap_cb_param_t *param)
{
    switch (event) {
    case ESP_GAP_BLE_ADV_DATA_SET_COMPLETE_EVT:
        FUNC4(&hidd_adv_params);
        break;
     case ESP_GAP_BLE_SEC_REQ_EVT:
        for(int i = 0; i < ESP_BD_ADDR_LEN; i++) {
             FUNC0(HID_DEMO_TAG, "%x:",param->ble_security.ble_req.bd_addr[i]);
        }
        FUNC3(param->ble_security.ble_req.bd_addr, true);
	 break;
     case ESP_GAP_BLE_AUTH_CMPL_EVT:
        sec_conn = true;
        esp_bd_addr_t bd_addr;
        FUNC5(bd_addr, param->ble_security.auth_cmpl.bd_addr, sizeof(esp_bd_addr_t));
        FUNC2(HID_DEMO_TAG, "remote BD_ADDR: %08x%04x",\
                (bd_addr[0] << 24) + (bd_addr[1] << 16) + (bd_addr[2] << 8) + bd_addr[3],
                (bd_addr[4] << 8) + bd_addr[5]);
        FUNC2(HID_DEMO_TAG, "address type = %d", param->ble_security.auth_cmpl.addr_type);
        FUNC2(HID_DEMO_TAG, "pair status = %s",param->ble_security.auth_cmpl.success ? "success" : "fail");
        if(!param->ble_security.auth_cmpl.success) {
            FUNC1(HID_DEMO_TAG, "fail reason = 0x%x",param->ble_security.auth_cmpl.fail_reason);
        }
        break;
    default:
        break;
    }
}