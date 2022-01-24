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
typedef  int tBTM_BLE_BATCH_SCAN_MODE ;
typedef  int UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_7__ {int scan_mode; int /*<<< orphan*/  cur_state; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* supports_ble ) () ;} ;

/* Variables and functions */
 int BTM_BLE_BATCH_SCAN_MODE_ACTI ; 
 int BTM_BLE_BATCH_SCAN_MODE_PASS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ BTM_CMD_STARTED ; 
 scalar_t__ BTM_ERR_PROCESSING ; 
 scalar_t__ BTM_ILLEGAL_VALUE ; 
 scalar_t__ BTM_NO_RESOURCES ; 
 scalar_t__ BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__ ble_batchscan_cb ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int*,int**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

tBTM_STATUS FUNC8(tBTM_BLE_BATCH_SCAN_MODE scan_mode,
                                   tBTM_BLE_REF_VALUE ref_value)
{
    tBTM_STATUS     status = BTM_NO_RESOURCES;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;
    UINT8 read_scan_mode = 0;
    UINT8  *p_data = NULL, num_records = 0;
    UINT16 data_len = 0;

    FUNC2 (" BTM_BleReadScanReports; %d, %d", scan_mode, ref_value);

    if (!FUNC6()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    FUNC0(&cmn_ble_vsc_cb);

    if (0 == cmn_ble_vsc_cb.tot_scan_results_strg) {
        FUNC1("Controller does not support batch scan");
        return BTM_ERR_PROCESSING;
    }

    /*  Check if the requested scan mode has already been setup by the user */
    read_scan_mode = ble_batchscan_cb.scan_mode & BTM_BLE_BATCH_SCAN_MODE_ACTI;
    if (0 == read_scan_mode) {
        read_scan_mode = ble_batchscan_cb.scan_mode & BTM_BLE_BATCH_SCAN_MODE_PASS;
    }

    /* Check only for modes, as scan reports can be called after disabling batch scan */
    if (read_scan_mode > 0 && (BTM_BLE_BATCH_SCAN_MODE_PASS == scan_mode ||
                               BTM_BLE_BATCH_SCAN_MODE_ACTI == scan_mode)) {
        status = FUNC4(scan_mode, ref_value);
        if (BTM_SUCCESS == status) {
            status = FUNC5(scan_mode, ref_value);
            if (BTM_CMD_STARTED != status) {
                FUNC3(scan_mode, &ref_value,
                                               &num_records, &p_data, &data_len);
            }
        }
    } else {
        FUNC1("Illegal read scan params: %d, %d, %d", read_scan_mode, scan_mode,
                        ble_batchscan_cb.cur_state);
        return BTM_ILLEGAL_VALUE;
    }
    return status;
}