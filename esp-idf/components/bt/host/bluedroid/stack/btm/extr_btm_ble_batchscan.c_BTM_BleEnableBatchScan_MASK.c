#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ tot_scan_results_strg; } ;
typedef  TYPE_1__ tBTM_BLE_VSC_CB ;
typedef  int /*<<< orphan*/  tBTM_BLE_REF_VALUE ;
typedef  scalar_t__ tBTM_BLE_DISCARD_RULE ;
typedef  scalar_t__ tBTM_BLE_BATCH_SCAN_MODE ;
typedef  int /*<<< orphan*/  tBLE_ADDR_TYPE ;
typedef  void* UINT32 ;
struct TYPE_7__ {scalar_t__ cur_state; scalar_t__ discard_rule; int /*<<< orphan*/  addr_type; void* scan_window; void* scan_interval; scalar_t__ scan_mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* supports_ble ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_BLE_BATCH_SCAN_ENABLE_EVT ; 
 int /*<<< orphan*/  BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE ; 
 scalar_t__ BTM_BLE_BATCH_SCAN_MODE_ACTI ; 
 scalar_t__ BTM_BLE_BATCH_SCAN_MODE_PASS ; 
 scalar_t__ BTM_BLE_BATCH_SCAN_MODE_PASS_ACTI ; 
 int /*<<< orphan*/  BTM_BLE_BATCH_SCAN_SET_PARAMS ; 
 scalar_t__ BTM_BLE_DISCARD_LOWER_RSSI_ITEMS ; 
 scalar_t__ BTM_BLE_DISCARD_OLD_ITEMS ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ BTM_BLE_SCAN_DISABLED_STATE ; 
 scalar_t__ BTM_BLE_SCAN_DISABLE_CALLED ; 
 scalar_t__ BTM_BLE_SCAN_ENABLE_CALLED ; 
 int /*<<< orphan*/  BTM_BLE_SCAN_INT_MAX ; 
 int /*<<< orphan*/  BTM_BLE_SCAN_INT_MIN ; 
 scalar_t__ BTM_BLE_SCAN_INVALID_STATE ; 
 int /*<<< orphan*/  BTM_BLE_SCAN_WIN_MAX ; 
 int /*<<< orphan*/  BTM_BLE_SCAN_WIN_MIN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ BTM_CMD_STARTED ; 
 scalar_t__ BTM_ERR_PROCESSING ; 
 scalar_t__ BTM_ILLEGAL_VALUE ; 
 scalar_t__ BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,void*,void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,void*,void*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__ ble_batchscan_cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,void*,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

tBTM_STATUS FUNC10(tBTM_BLE_BATCH_SCAN_MODE scan_mode,
                                   UINT32 scan_interval, UINT32 scan_window, tBLE_ADDR_TYPE addr_type,
                                   tBTM_BLE_DISCARD_RULE discard_rule, tBTM_BLE_REF_VALUE ref_value)
{
    tBTM_STATUS     status = BTM_NO_RESOURCES;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;
    FUNC4 (" BTM_BleEnableBatchScan: %d, %d, %d, %d, %d, %d",
                     scan_mode, scan_interval, scan_window, addr_type, discard_rule, ref_value);

    if (!FUNC8()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    FUNC1(&cmn_ble_vsc_cb);

    if (0 == cmn_ble_vsc_cb.tot_scan_results_strg) {
        FUNC3("Controller does not support batch scan");
        return BTM_ERR_PROCESSING;
    }

    FUNC2("BTM_BleEnableBatchScan: %d, %x, %x, %d, %d", scan_mode, scan_interval,
                    scan_window, discard_rule, ble_batchscan_cb.cur_state);

    /* Only 16 bits will be used for scan interval and scan window as per agreement with Google */
    /* So the standard LE range would suffice for scan interval and scan window */
    if ((FUNC0(scan_interval, BTM_BLE_SCAN_INT_MIN, BTM_BLE_SCAN_INT_MAX) ||
            FUNC0(scan_window, BTM_BLE_SCAN_WIN_MIN, BTM_BLE_SCAN_WIN_MAX))
            && (BTM_BLE_BATCH_SCAN_MODE_PASS == scan_mode || BTM_BLE_BATCH_SCAN_MODE_ACTI == scan_mode
                || BTM_BLE_BATCH_SCAN_MODE_PASS_ACTI == scan_mode)
            && (BTM_BLE_DISCARD_OLD_ITEMS == discard_rule ||
                BTM_BLE_DISCARD_LOWER_RSSI_ITEMS == discard_rule)) {
        if (BTM_BLE_SCAN_INVALID_STATE == ble_batchscan_cb.cur_state ||
                BTM_BLE_SCAN_DISABLED_STATE == ble_batchscan_cb.cur_state ||
                BTM_BLE_SCAN_DISABLE_CALLED == ble_batchscan_cb.cur_state) {
            status = FUNC6(TRUE);
            if (BTM_CMD_STARTED != status) {
                return status;
            }
            FUNC5(BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE,
                                       BTM_BLE_SCAN_ENABLE_CALLED, 0, ref_value);
        }

        ble_batchscan_cb.scan_mode = scan_mode;
        ble_batchscan_cb.scan_interval = scan_interval;
        ble_batchscan_cb.scan_window = scan_window;
        ble_batchscan_cb.addr_type = addr_type;
        ble_batchscan_cb.discard_rule = discard_rule;
        /* This command starts batch scanning, if enabled */
        status = FUNC7(scan_mode, scan_interval, scan_window, addr_type,
                                             discard_rule);
        if (BTM_CMD_STARTED != status) {
            return status;
        }

        /* The user needs to be provided scan enable event */
        FUNC5(BTM_BLE_BATCH_SCAN_SET_PARAMS, ble_batchscan_cb.cur_state,
                                   BTM_BLE_BATCH_SCAN_ENABLE_EVT, ref_value);
    } else {
        FUNC3("Illegal enable scan params");
        return BTM_ILLEGAL_VALUE;
    }
    return status;
}