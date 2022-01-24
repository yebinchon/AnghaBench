#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_3__ tBTA_GATTC_OP_CMPL ;
struct TYPE_14__ {TYPE_2__* p_rcb; int /*<<< orphan*/  bta_conn_id; int /*<<< orphan*/  status; } ;
typedef  TYPE_4__ tBTA_GATTC_CLCB ;
struct TYPE_11__ {int /*<<< orphan*/  status; int /*<<< orphan*/  conn_id; } ;
struct TYPE_15__ {TYPE_1__ exec_cmpl; } ;
typedef  TYPE_5__ tBTA_GATTC ;
struct TYPE_12__ {int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,TYPE_5__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_GATTC_EXEC_EVT ; 
 int /*<<< orphan*/  BTA_GATT_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_5__*) ; 

void FUNC3(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_OP_CMPL *p_data)
{
    tBTA_GATTC          cb_data;
    //free the command data store in the queue.
    FUNC0(p_clcb);
    FUNC1(p_clcb);
    p_clcb->status      = BTA_GATT_OK;

    /* execute complete, callback */
    cb_data.exec_cmpl.conn_id = p_clcb->bta_conn_id;
    cb_data.exec_cmpl.status = p_data->status;

    ( *p_clcb->p_rcb->p_cback)(BTA_GATTC_EXEC_EVT,  &cb_data);

}