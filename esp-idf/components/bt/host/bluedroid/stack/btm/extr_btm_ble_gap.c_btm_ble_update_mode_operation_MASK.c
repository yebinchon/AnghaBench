#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
struct TYPE_7__ {int connectable_mode; int /*<<< orphan*/  directed_conn; int /*<<< orphan*/  adv_mode; } ;
struct TYPE_6__ {TYPE_3__ inq_var; } ;
struct TYPE_5__ {int connectable_mode; } ;
struct TYPE_8__ {TYPE_2__ ble_ctr_cb; TYPE_1__ btm_inq_vars; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 scalar_t__ BLE_CONN_IDLE ; 
 int /*<<< orphan*/  BTM_BLE_ADV_DISABLE ; 
 int BTM_BLE_CONNECTABLE ; 
 int /*<<< orphan*/  BTM_BLE_CONNECT_EVT ; 
 int /*<<< orphan*/  BTM_BLE_STATE_ALL_ADV_MASK ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HCI_ERR_DIRECTED_ADVERTISING_TIMEOUT ; 
 scalar_t__ HCI_ERR_HOST_REJECT_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_4__ btm_cb ; 
 int /*<<< orphan*/  FUNC4 () ; 

BOOLEAN FUNC5(UINT8 link_role, BD_ADDR bd_addr, UINT8 status)
{
    BOOLEAN bg_con = FALSE;
    if (status == HCI_ERR_DIRECTED_ADVERTISING_TIMEOUT) {
        btm_cb.ble_ctr_cb.inq_var.adv_mode  = BTM_BLE_ADV_DISABLE;
        /* make device fall back into undirected adv mode by default */
        btm_cb.ble_ctr_cb.inq_var.directed_conn = BTM_BLE_CONNECT_EVT;
        /* clear all adv states */
        FUNC0 (BTM_BLE_STATE_ALL_ADV_MASK);
    }

    if (btm_cb.ble_ctr_cb.inq_var.connectable_mode == BTM_BLE_CONNECTABLE) {
        FUNC3(btm_cb.btm_inq_vars.connectable_mode |
                                   btm_cb.ble_ctr_cb.inq_var.connectable_mode);
    }

    /* when no connection is attempted, and controller is not rejecting last request
       due to resource limitation, start next direct connection or background connection
       now in order */
    if (FUNC1() == BLE_CONN_IDLE && status != HCI_ERR_HOST_REJECT_RESOURCES &&
            !FUNC4()) {
        bg_con = FUNC2();
    }

    return bg_con;
}