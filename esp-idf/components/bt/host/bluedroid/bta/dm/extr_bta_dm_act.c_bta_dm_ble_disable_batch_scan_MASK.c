#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTM_STATUS ;
struct TYPE_10__ {scalar_t__ tot_scan_results_strg; } ;
typedef  TYPE_3__ tBTM_BLE_VSC_CB ;
struct TYPE_9__ {int /*<<< orphan*/  ref_value; } ;
struct TYPE_8__ {int /*<<< orphan*/  ref_value; } ;
struct TYPE_11__ {TYPE_2__ ble_enable_scan; TYPE_1__ ble_disable_scan; } ;
typedef  TYPE_4__ tBTA_DM_MSG ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_BLE_BATCH_SCAN_DISABLE_EVT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ BTM_CMD_STARTED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4 (tBTA_DM_MSG *p_data)
{
    FUNC2(p_data);
    tBTM_STATUS btm_status = 0;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;

    FUNC1(&cmn_ble_vsc_cb);

    if (0 != cmn_ble_vsc_cb.tot_scan_results_strg) {
        btm_status = FUNC0(p_data->ble_disable_scan.ref_value);
    }

    if (BTM_CMD_STARTED != btm_status) {
        FUNC3(BTM_BLE_BATCH_SCAN_DISABLE_EVT, p_data->ble_enable_scan.ref_value,
                              btm_status);
    }
}