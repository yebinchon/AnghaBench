#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTA_GATT_STATUS ;
struct TYPE_9__ {int /*<<< orphan*/  is_execute; } ;
struct TYPE_10__ {TYPE_1__ api_exec; } ;
typedef  TYPE_2__ tBTA_GATTC_DATA ;
struct TYPE_11__ {int /*<<< orphan*/  bta_conn_id; TYPE_2__* p_q_cmd; } ;
typedef  TYPE_3__ tBTA_GATTC_CLCB ;

/* Variables and functions */
 scalar_t__ BTA_GATT_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GATTC_OPTYPE_EXE_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

void FUNC4(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATT_STATUS    status;

    if (FUNC2(p_clcb, p_data)) {
        status = FUNC0(p_clcb->bta_conn_id, p_data->api_exec.is_execute);

        if (status != BTA_GATT_OK) {
            /* Dequeue the data, if it was enqueued */
            if (p_clcb->p_q_cmd == p_data) {
                p_clcb->p_q_cmd = NULL;
                FUNC3(p_clcb);
            }

            FUNC1(p_clcb->bta_conn_id, GATTC_OPTYPE_EXE_WRITE, status, NULL);
        }
    }
}