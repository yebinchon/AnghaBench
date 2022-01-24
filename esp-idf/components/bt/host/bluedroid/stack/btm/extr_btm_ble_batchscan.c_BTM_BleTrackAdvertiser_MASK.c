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
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ tot_scan_results_strg; } ;
typedef  TYPE_1__ tBTM_BLE_VSC_CB ;
typedef  int /*<<< orphan*/  tBTM_BLE_TRACK_ADV_CBACK ;
typedef  int /*<<< orphan*/  tBTM_BLE_REF_VALUE ;
struct TYPE_7__ {int /*<<< orphan*/  ref_value; int /*<<< orphan*/ * p_track_cback; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* supports_ble ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 int /*<<< orphan*/  BTM_ERR_PROCESSING ; 
 int /*<<< orphan*/  BTM_ILLEGAL_VALUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_3__ ble_advtrack_cb ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

tBTM_STATUS FUNC5(tBTM_BLE_TRACK_ADV_CBACK *p_track_cback,
                                   tBTM_BLE_REF_VALUE ref_value)
{
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;
    FUNC2 (" BTM_BleTrackAdvertiser");
    if (!FUNC3()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    FUNC0(&cmn_ble_vsc_cb);

    if (0 == cmn_ble_vsc_cb.tot_scan_results_strg) {
        FUNC1("Controller does not support scan storage");
        return BTM_ERR_PROCESSING;
    }

    ble_advtrack_cb.p_track_cback = p_track_cback;
    ble_advtrack_cb.ref_value = ref_value;
    return BTM_CMD_STARTED;
}