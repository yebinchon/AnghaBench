#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  conn_update_mask; int /*<<< orphan*/  timer_entry; int /*<<< orphan*/  upda_con_timer; void* current_used_conn_timeout; void* current_used_conn_latency; void* current_used_conn_interval; } ;
typedef  TYPE_1__ tL2C_LCB ;
typedef  void* UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  void* UINT16 ;
struct TYPE_8__ {int /*<<< orphan*/ * update_conn_param_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTU_TTYPE_L2CAP_UPDA_CONN_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* HCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*) ; 
 int /*<<< orphan*/  L2C_BLE_UPDATE_PARAM_FULL ; 
 int /*<<< orphan*/  L2C_BLE_UPDATE_PENDING ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_5__ conn_param_update_cb ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (void*) ; 

void FUNC8 (UINT16 handle, UINT8 status, UINT16 conn_interval,
                                                       UINT16 conn_latency, UINT16 conn_timeout)
{
    tL2C_LCB *p_lcb;

    /* See if we have a link control block for the remote device */
    p_lcb = FUNC7(handle);
    if (!p_lcb) {
        FUNC2("l2cble_process_conn_update_evt: Invalid handle: %d", handle);
        return;
    }
    if (status == HCI_SUCCESS){
        p_lcb->current_used_conn_interval = conn_interval;
        p_lcb->current_used_conn_latency = conn_latency;
        p_lcb->current_used_conn_timeout = conn_timeout;
    }else{
        FUNC2("l2cble_process_conn_update_evt: Error status: %d", status);
    }

    p_lcb->conn_update_mask &= ~L2C_BLE_UPDATE_PENDING;
    p_lcb->conn_update_mask &= ~L2C_BLE_UPDATE_PARAM_FULL;

    FUNC4(&p_lcb->upda_con_timer);

    if (conn_param_update_cb.update_conn_param_cb != NULL) {
        FUNC5(p_lcb, status);
    }

    if (FUNC6(p_lcb) == TRUE) {
        UINT32 time = FUNC0(p_lcb);
        FUNC3(&p_lcb->upda_con_timer, BTU_TTYPE_L2CAP_UPDA_CONN_PARAMS, time);
    }

    FUNC4 (&p_lcb->timer_entry);

    FUNC1("l2cble_process_conn_update_evt: conn_update_mask=%d", p_lcb->conn_update_mask);
}