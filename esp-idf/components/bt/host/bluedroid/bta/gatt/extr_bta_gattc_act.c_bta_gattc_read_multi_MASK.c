#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int num_handles; int /*<<< orphan*/  handles; int /*<<< orphan*/  auth_req; } ;
struct TYPE_15__ {TYPE_1__ read_multiple; } ;
typedef  TYPE_3__ tGATT_READ_PARAM ;
typedef  scalar_t__ tBTA_GATT_STATUS ;
struct TYPE_14__ {int num_attr; int /*<<< orphan*/  handles; int /*<<< orphan*/  auth_req; } ;
struct TYPE_16__ {TYPE_2__ api_read_multi; } ;
typedef  TYPE_4__ tBTA_GATTC_DATA ;
struct TYPE_17__ {int /*<<< orphan*/  bta_conn_id; TYPE_4__* p_q_cmd; } ;
typedef  TYPE_5__ tBTA_GATTC_CLCB ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 scalar_t__ BTA_GATT_OK ; 
 int /*<<< orphan*/  GATTC_OPTYPE_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  GATT_READ_MULTIPLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

void FUNC6(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATT_STATUS    status = BTA_GATT_OK;
    tGATT_READ_PARAM    read_param;

    if (FUNC2(p_clcb, p_data)) {
        FUNC5(&read_param, 0, sizeof(tGATT_READ_PARAM));

        if (status == BTA_GATT_OK) {
            read_param.read_multiple.num_handles = p_data->api_read_multi.num_attr;
            read_param.read_multiple.auth_req = p_data->api_read_multi.auth_req;
            FUNC4(&read_param.read_multiple.handles, p_data->api_read_multi.handles,
                                        sizeof(UINT16) * p_data->api_read_multi.num_attr);

            status = FUNC0(p_clcb->bta_conn_id, GATT_READ_MULTIPLE, &read_param);
        }

        /* read fail */
        if (status != BTA_GATT_OK) {
            /* Dequeue the data, if it was enqueued */
            if (p_clcb->p_q_cmd == p_data) {
                p_clcb->p_q_cmd = NULL;
                FUNC3(p_clcb);
            }

            FUNC1(p_clcb->bta_conn_id, GATTC_OPTYPE_READ, status, NULL);
        }
    }
}