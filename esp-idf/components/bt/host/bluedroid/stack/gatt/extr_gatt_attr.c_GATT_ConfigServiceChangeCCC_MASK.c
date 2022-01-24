#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ccc_stage; int /*<<< orphan*/  connected; int /*<<< orphan*/  conn_id; } ;
typedef  TYPE_1__ tGATT_PROFILE_CLCB ;
typedef  int /*<<< orphan*/  tBT_TRANSPORT ;
struct TYPE_7__ {int /*<<< orphan*/  gatt_if; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_ADDR_UNKNOWN_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GATT_SVC_CHANGED_CONNECTING ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_5__ gatt_cb ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5 (BD_ADDR remote_bda, BOOLEAN enable, tBT_TRANSPORT transport)
{
    tGATT_PROFILE_CLCB   *p_clcb = FUNC4 (remote_bda, transport);

    if (p_clcb == NULL) {
        p_clcb = FUNC3 (0, remote_bda, transport);
    }

    if (p_clcb == NULL) {
        return;
    }

    if (FUNC1 (gatt_cb.gatt_if, remote_bda, &p_clcb->conn_id, transport)) {
        p_clcb->connected = TRUE;
    }
    /* hold the link here */
    FUNC0(gatt_cb.gatt_if, remote_bda, BLE_ADDR_UNKNOWN_TYPE, TRUE, transport);
    p_clcb->ccc_stage = GATT_SVC_CHANGED_CONNECTING;

    if (!p_clcb->connected) {
        /* wait for connection */
        return;
    }

    p_clcb->ccc_stage ++;
    FUNC2(p_clcb);
}