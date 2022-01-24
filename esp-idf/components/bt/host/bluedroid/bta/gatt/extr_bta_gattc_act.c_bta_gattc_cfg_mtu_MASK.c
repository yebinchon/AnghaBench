#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTA_GATT_STATUS ;
typedef  int /*<<< orphan*/  tBTA_GATTC_DATA ;
struct TYPE_5__ {int /*<<< orphan*/  bta_conn_id; int /*<<< orphan*/ * p_q_cmd; } ;
typedef  TYPE_1__ tBTA_GATTC_CLCB ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GATTC_OPTYPE_CONFIG ; 
 scalar_t__ GATT_CMD_STARTED ; 
 scalar_t__ GATT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATT_STATUS    status;

    if (FUNC2(p_clcb, p_data)) {
        status = FUNC0 (p_clcb->bta_conn_id);

        /* if failed, return callback here */
        if (status != GATT_SUCCESS && status != GATT_CMD_STARTED) {
            /* Dequeue the data, if it was enqueued */
            if (p_clcb->p_q_cmd == p_data) {
                p_clcb->p_q_cmd = NULL;
                FUNC3(p_clcb);
            }

            FUNC1(p_clcb->bta_conn_id, GATTC_OPTYPE_CONFIG, status, NULL);
        }
    }
}