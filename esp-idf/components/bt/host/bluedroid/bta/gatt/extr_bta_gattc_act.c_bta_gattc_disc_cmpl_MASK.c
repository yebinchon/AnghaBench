#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  event; } ;
struct TYPE_13__ {TYPE_2__ hdr; } ;
typedef  TYPE_3__ tBTA_GATTC_DATA ;
struct TYPE_14__ {scalar_t__ status; scalar_t__ auto_update; int /*<<< orphan*/  bda; int /*<<< orphan*/  bta_conn_id; TYPE_3__* p_q_cmd; TYPE_1__* p_srcb; int /*<<< orphan*/  disc_active; } ;
typedef  TYPE_4__ tBTA_GATTC_CLCB ;
struct TYPE_11__ {int /*<<< orphan*/  server_bda; TYPE_3__* p_srvc_list; int /*<<< orphan*/ * p_srvc_cache; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ BTA_GATTC_DISC_WAITING ; 
 int /*<<< orphan*/  BTA_GATTC_INT_DISCOVER_EVT ; 
 int /*<<< orphan*/  BTA_GATTC_SERV_IDLE ; 
 int /*<<< orphan*/  BT_TRANSPORT_LE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GATT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

void FUNC8(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATTC_DATA *p_q_cmd = p_clcb->p_q_cmd;
    FUNC1(p_data);

    FUNC0("bta_gattc_disc_cmpl conn_id=%d, status = %d", p_clcb->bta_conn_id, p_clcb->status);

    p_clcb->p_srcb->state = BTA_GATTC_SERV_IDLE;
    p_clcb->disc_active = FALSE;

    if (p_clcb->status != GATT_SUCCESS) {
        /* clean up cache */
        if (p_clcb->p_srcb && p_clcb->p_srcb->p_srvc_cache) {
            FUNC6(p_clcb->p_srcb->p_srvc_cache);
            p_clcb->p_srcb->p_srvc_cache = NULL;
        }
#if(GATTC_CACHE_NVS == TRUE)
        /* used to reset cache in application */
        FUNC2(p_clcb->p_srcb->server_bda);
#endif
    }
    if (p_clcb->p_srcb && p_clcb->p_srcb->p_srvc_list) {
        /* release pending attribute list buffer */
        FUNC7(p_clcb->p_srcb->p_srvc_list);
        p_clcb->p_srcb->p_srvc_list = NULL;
        //osi_free_and_reset((void **)&p_clcb->p_srcb->p_srvc_list);
    }

    if (p_clcb->auto_update == BTA_GATTC_DISC_WAITING) {
        /* start discovery again */
        FUNC4(p_clcb, BTA_GATTC_INT_DISCOVER_EVT, NULL);
    }
    /* get any queued command to proceed */
    else if (p_q_cmd != NULL) {
        p_clcb->p_q_cmd = NULL;
        /* execute pending operation of link block still present */
        if (FUNC5(p_clcb->p_srcb->server_bda, BT_TRANSPORT_LE) != NULL) {
            FUNC4(p_clcb, p_q_cmd->hdr.event, p_q_cmd);
        }
        /* if the command executed requeued the cmd, we don't
         * want to free the underlying buffer that's being
         * referenced by p_clcb->p_q_cmd
         */
        if (p_q_cmd != p_clcb->p_q_cmd) {
            FUNC7(p_q_cmd);
            p_q_cmd = NULL;
        }
    }

    //register service change
    FUNC3(p_clcb->bta_conn_id, p_clcb->bda);

}