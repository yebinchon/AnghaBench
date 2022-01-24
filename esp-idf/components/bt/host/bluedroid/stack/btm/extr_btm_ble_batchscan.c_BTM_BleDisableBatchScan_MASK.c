#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTM_STATUS ;
struct TYPE_4__ {scalar_t__ tot_scan_results_strg; } ;
typedef  TYPE_1__ tBTM_BLE_VSC_CB ;
typedef  int /*<<< orphan*/  tBTM_BLE_REF_VALUE ;
struct TYPE_5__ {int /*<<< orphan*/  (* supports_ble ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_BLE_BATCH_SCAN_DISABLE_EVT ; 
 int /*<<< orphan*/  BTM_BLE_BATCH_SCAN_SET_PARAMS ; 
 int /*<<< orphan*/  BTM_BLE_SCAN_DISABLE_CALLED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ BTM_CMD_STARTED ; 
 scalar_t__ BTM_ERR_PROCESSING ; 
 scalar_t__ BTM_ILLEGAL_VALUE ; 
 scalar_t__ BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

tBTM_STATUS FUNC7(tBTM_BLE_REF_VALUE ref_value)
{
    tBTM_STATUS     status = BTM_NO_RESOURCES;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;
    FUNC2 (" BTM_BleDisableBatchScan");

    if (!FUNC5()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    FUNC0(&cmn_ble_vsc_cb);

    if (0 == cmn_ble_vsc_cb.tot_scan_results_strg) {
        FUNC1("Controller does not support batch scan");
        return BTM_ERR_PROCESSING;
    }

    status = FUNC4(FALSE);
    if (BTM_CMD_STARTED == status) {
        /* The user needs to be provided scan disable event */
        FUNC3(BTM_BLE_BATCH_SCAN_SET_PARAMS,
                                   BTM_BLE_SCAN_DISABLE_CALLED, BTM_BLE_BATCH_SCAN_DISABLE_EVT,
                                   ref_value);
    }

    return status;
}