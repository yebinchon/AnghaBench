#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  event; } ;
struct TYPE_16__ {TYPE_2__ hdr; } ;
typedef  TYPE_5__ tBTA_GATTC_DATA ;
struct TYPE_17__ {TYPE_4__* p_rcb; int /*<<< orphan*/  bta_conn_id; void* is_full; int /*<<< orphan*/  p_cmd_list; TYPE_1__* p_srcb; } ;
typedef  TYPE_6__ tBTA_GATTC_CLCB ;
struct TYPE_14__ {void* is_full; int /*<<< orphan*/  conn_id; } ;
struct TYPE_18__ {TYPE_3__ queue_full; int /*<<< orphan*/  status; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_7__ tBTA_GATTC ;
typedef  int /*<<< orphan*/  list_node_t ;
struct TYPE_15__ {int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,TYPE_7__*) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  server_bda; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_GATTC_QUEUE_FULL_EVT ; 
 int /*<<< orphan*/  BT_TRANSPORT_LE ; 
 void* FALSE ; 
 int /*<<< orphan*/  GATT_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_7__*) ; 

__attribute__((used)) static void FUNC7(tBTA_GATTC_CLCB *p_clcb)
{
    if (!FUNC3(p_clcb->p_cmd_list)) {
        list_node_t *node = FUNC2(p_clcb->p_cmd_list);
        tBTA_GATTC_DATA *p_data = (tBTA_GATTC_DATA *)FUNC4(node);
        if (p_data != NULL) {
            /* execute pending operation of link block still present */
            if (FUNC1(p_clcb->p_srcb->server_bda, BT_TRANSPORT_LE) != NULL) {
                // The data to be sent to the gattc state machine for processing
                if(FUNC0(p_clcb, p_data->hdr.event, p_data)) {
                    FUNC5(p_clcb->p_cmd_list, (void *)p_data);
                }

                if (p_clcb->is_full) {
                    tBTA_GATTC cb_data = {0};
                    p_clcb->is_full = FALSE;
                    cb_data.status = GATT_SUCCESS;
                    cb_data.queue_full.conn_id = p_clcb->bta_conn_id;
                    cb_data.queue_full.is_full = FALSE;
                    if (p_clcb->p_rcb->p_cback != NULL) {
                        ( *p_clcb->p_rcb->p_cback)(BTA_GATTC_QUEUE_FULL_EVT, (tBTA_GATTC *)&cb_data);
                    }
                }
            }
        }
    }
}