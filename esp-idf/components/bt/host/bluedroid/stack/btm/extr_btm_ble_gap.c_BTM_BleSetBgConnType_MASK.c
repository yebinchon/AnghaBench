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
typedef  int /*<<< orphan*/  tBTM_BLE_SEL_CBACK ;
typedef  int tBTM_BLE_CONN_TYPE ;
struct TYPE_4__ {int bg_conn_type; } ;
struct TYPE_6__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* supports_ble ) () ;} ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
#define  BTM_BLE_CONN_AUTO 130 
#define  BTM_BLE_CONN_NONE 129 
#define  BTM_BLE_CONN_SELECTIVE 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_3__ btm_cb ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

BOOLEAN FUNC6(tBTM_BLE_CONN_TYPE   bg_conn_type,
                             tBTM_BLE_SEL_CBACK   *p_select_cback)
{
    BOOLEAN started = TRUE;

    FUNC1 ("BTM_BleSetBgConnType ");
    if (!FUNC4()->supports_ble()) {
        return FALSE;
    }

    if (btm_cb.ble_ctr_cb.bg_conn_type != bg_conn_type) {
        switch (bg_conn_type) {
        case BTM_BLE_CONN_AUTO:
            FUNC2(TRUE);
            break;

        case BTM_BLE_CONN_SELECTIVE:
            if (btm_cb.ble_ctr_cb.bg_conn_type == BTM_BLE_CONN_AUTO) {
                FUNC2(FALSE);
            }
            FUNC3(TRUE, p_select_cback);
            break;

        case BTM_BLE_CONN_NONE:
            if (btm_cb.ble_ctr_cb.bg_conn_type == BTM_BLE_CONN_AUTO) {
                FUNC2(FALSE);
            } else if (btm_cb.ble_ctr_cb.bg_conn_type == BTM_BLE_CONN_SELECTIVE) {
                FUNC3(FALSE, NULL);
            }
            started = TRUE;
            break;

        default:
            FUNC0("invalid bg connection type : %d ", bg_conn_type);
            started = FALSE;
            break;
        }

        if (started) {
            btm_cb.ble_ctr_cb.bg_conn_type = bg_conn_type;
        }
    }
    return started;
}