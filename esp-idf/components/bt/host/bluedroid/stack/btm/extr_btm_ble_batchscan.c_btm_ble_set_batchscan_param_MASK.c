#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  tBTM_BLE_DISCARD_RULE ;
typedef  int /*<<< orphan*/  tBTM_BLE_BATCH_SCAN_MODE ;
typedef  int /*<<< orphan*/  tBLE_ADDR_TYPE ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_4__ {int /*<<< orphan*/  own_addr_type; } ;
struct TYPE_5__ {TYPE_1__ addr_mgnt_cb; } ;
struct TYPE_6__ {TYPE_2__ ble_ctr_cb; } ;

/* Variables and functions */
 int BTM_BLE_BATCH_SCAN_PARAM_CONFIG_LEN ; 
 int /*<<< orphan*/  BTM_BLE_BATCH_SCAN_SET_PARAMS ; 
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 int /*<<< orphan*/  BTM_ILLEGAL_VALUE ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_BLE_BATCH_SCAN_OCF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btm_ble_batchscan_vsc_cmpl_cback ; 
 TYPE_3__ btm_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

tBTM_STATUS FUNC5(tBTM_BLE_BATCH_SCAN_MODE scan_mode,
                                        UINT32 scan_interval, UINT32 scan_window, tBLE_ADDR_TYPE addr_type,
                                        tBTM_BLE_DISCARD_RULE discard_rule)
{
    tBTM_STATUS     status = BTM_NO_RESOURCES;
    UINT8 scan_param[BTM_BLE_BATCH_SCAN_PARAM_CONFIG_LEN], *pp_scan;

    pp_scan = scan_param;
    FUNC4(scan_param, 0, BTM_BLE_BATCH_SCAN_PARAM_CONFIG_LEN);

    // Override param and decide addr_type based on own addr type
    // TODO: Remove upper layer parameter?
    addr_type = btm_cb.ble_ctr_cb.addr_mgnt_cb.own_addr_type;

    FUNC3 (pp_scan, BTM_BLE_BATCH_SCAN_SET_PARAMS);
    FUNC3 (pp_scan, scan_mode);
    FUNC2 (pp_scan, scan_window);
    FUNC2 (pp_scan, scan_interval);
    FUNC3 (pp_scan, addr_type);
    FUNC3 (pp_scan, discard_rule);

    if ((status = FUNC1 (HCI_BLE_BATCH_SCAN_OCF,
                  BTM_BLE_BATCH_SCAN_PARAM_CONFIG_LEN,
                  scan_param, btm_ble_batchscan_vsc_cmpl_cback)) != BTM_CMD_STARTED) {
        FUNC0("btm_ble_set_batchscan_param %d", status);
        return BTM_ILLEGAL_VALUE;
    }

    return status;
}