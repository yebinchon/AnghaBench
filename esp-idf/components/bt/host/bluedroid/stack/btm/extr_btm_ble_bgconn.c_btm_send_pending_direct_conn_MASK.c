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
typedef  int /*<<< orphan*/  tL2C_LCB ;
struct TYPE_5__ {scalar_t__ p_param; } ;
typedef  TYPE_2__ tBTM_BLE_CONN_REQ ;
struct TYPE_4__ {int /*<<< orphan*/  conn_pending_q; } ;
struct TYPE_6__ {TYPE_1__ ble_ctr_cb; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_3__ btm_cb ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

BOOLEAN FUNC3(void)
{
    tBTM_BLE_CONN_REQ *p_req;
    BOOLEAN     rt = FALSE;

    p_req = (tBTM_BLE_CONN_REQ*)FUNC0(btm_cb.ble_ctr_cb.conn_pending_q, 0);
    if (p_req != NULL) {
        rt = FUNC1((tL2C_LCB *)(p_req->p_param));

        FUNC2((void *)p_req);
    }

    return rt;
}