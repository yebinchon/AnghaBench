#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  UINT8 ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM ; 
 int BTM_BLE_BATCH_SCAN_STORAGE_CFG_LEN ; 
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 int /*<<< orphan*/  BTM_ILLEGAL_VALUE ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_BLE_BATCH_SCAN_OCF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btm_ble_batchscan_vsc_cmpl_cback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

tBTM_STATUS FUNC4(UINT8 batch_scan_full_max, UINT8 batch_scan_trunc_max,
                                       UINT8 batch_scan_notify_threshold)
{
    tBTM_STATUS     status = BTM_NO_RESOURCES;
    UINT8 param[BTM_BLE_BATCH_SCAN_STORAGE_CFG_LEN], *pp;

    pp = param;
    FUNC3(param, 0, BTM_BLE_BATCH_SCAN_STORAGE_CFG_LEN);

    FUNC2 (pp, BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM);
    FUNC2 (pp, batch_scan_full_max);
    FUNC2 (pp, batch_scan_trunc_max);
    FUNC2 (pp, batch_scan_notify_threshold);

    if ((status = FUNC1 (HCI_BLE_BATCH_SCAN_OCF,
                  BTM_BLE_BATCH_SCAN_STORAGE_CFG_LEN, param,
                  btm_ble_batchscan_vsc_cmpl_cback)) != BTM_CMD_STARTED) {
        FUNC0("btm_ble_set_storage_config %d", status);
        return BTM_ILLEGAL_VALUE;
    }

    return status;
}