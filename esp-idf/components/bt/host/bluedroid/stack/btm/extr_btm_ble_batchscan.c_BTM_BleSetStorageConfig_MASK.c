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
typedef  int /*<<< orphan*/  tBTM_BLE_SCAN_THRESHOLD_CBACK ;
typedef  int /*<<< orphan*/  tBTM_BLE_SCAN_SETUP_CBACK ;
typedef  int /*<<< orphan*/  tBTM_BLE_SCAN_REP_CBACK ;
typedef  int /*<<< orphan*/  tBTM_BLE_REF_VALUE ;
typedef  scalar_t__ UINT8 ;
struct TYPE_7__ {scalar_t__ cur_state; int /*<<< orphan*/  ref_value; int /*<<< orphan*/ * p_scan_rep_cback; int /*<<< orphan*/ * p_thres_cback; int /*<<< orphan*/ * p_setup_cback; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* supports_ble ) () ;} ;

/* Variables and functions */
 scalar_t__ BTM_BLE_ADV_SCAN_FULL_MAX ; 
 scalar_t__ BTM_BLE_ADV_SCAN_THR_MAX ; 
 scalar_t__ BTM_BLE_ADV_SCAN_TRUNC_MAX ; 
 int /*<<< orphan*/  BTM_BLE_BATCH_SCAN_CFG_STRG_EVT ; 
 int /*<<< orphan*/  BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE ; 
 int /*<<< orphan*/  BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM ; 
 scalar_t__ BTM_BLE_SCAN_DISABLED_STATE ; 
 scalar_t__ BTM_BLE_SCAN_DISABLE_CALLED ; 
 scalar_t__ BTM_BLE_SCAN_ENABLE_CALLED ; 
 scalar_t__ BTM_BLE_SCAN_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ BTM_CMD_STARTED ; 
 scalar_t__ BTM_ERR_PROCESSING ; 
 scalar_t__ BTM_ILLEGAL_VALUE ; 
 scalar_t__ BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__ ble_batchscan_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

tBTM_STATUS FUNC8(UINT8 batch_scan_full_max, UINT8 batch_scan_trunc_max,
                                    UINT8 batch_scan_notify_threshold,
                                    tBTM_BLE_SCAN_SETUP_CBACK *p_setup_cback,
                                    tBTM_BLE_SCAN_THRESHOLD_CBACK *p_thres_cback,
                                    tBTM_BLE_SCAN_REP_CBACK *p_rep_cback,
                                    tBTM_BLE_REF_VALUE ref_value)
{
    tBTM_STATUS     status = BTM_NO_RESOURCES;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;

    FUNC2 (" BTM_BleSetStorageConfig: %d, %d, %d, %d, %d",
                     ble_batchscan_cb.cur_state, ref_value, batch_scan_full_max, batch_scan_trunc_max,
                     batch_scan_notify_threshold);

    if (!FUNC6()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    FUNC0(&cmn_ble_vsc_cb);

    if (0 == cmn_ble_vsc_cb.tot_scan_results_strg) {
        FUNC1("Controller does not support batch scan");
        return BTM_ERR_PROCESSING;
    }

    ble_batchscan_cb.p_setup_cback = p_setup_cback;
    ble_batchscan_cb.p_thres_cback = p_thres_cback;
    ble_batchscan_cb.p_scan_rep_cback = p_rep_cback;
    ble_batchscan_cb.ref_value = ref_value;

    if (batch_scan_full_max > BTM_BLE_ADV_SCAN_FULL_MAX ||
            batch_scan_trunc_max > BTM_BLE_ADV_SCAN_TRUNC_MAX ||
            batch_scan_notify_threshold > BTM_BLE_ADV_SCAN_THR_MAX) {
        FUNC1("Illegal set storage config params");
        return BTM_ILLEGAL_VALUE;
    }

    if (BTM_BLE_SCAN_INVALID_STATE == ble_batchscan_cb.cur_state ||
            BTM_BLE_SCAN_DISABLED_STATE == ble_batchscan_cb.cur_state ||
            BTM_BLE_SCAN_DISABLE_CALLED == ble_batchscan_cb.cur_state) {
        status = FUNC4(TRUE);
        if (BTM_CMD_STARTED != status) {
            return status;
        }

        ble_batchscan_cb.cur_state = BTM_BLE_SCAN_ENABLE_CALLED;
        FUNC3(BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE,
                                   BTM_BLE_SCAN_ENABLE_CALLED, 0, ref_value);
    }

    status = FUNC5(batch_scan_full_max, batch_scan_trunc_max,
                                        batch_scan_notify_threshold);
    if (BTM_CMD_STARTED != status) {
        return status;
    }
    /* The user needs to be provided scan config storage event */
    FUNC3(BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM, ble_batchscan_cb.cur_state,
                               BTM_BLE_BATCH_SCAN_CFG_STRG_EVT, ref_value);

    return status;
}