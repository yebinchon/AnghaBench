#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_16__ {int* serv_handle; int conn_service; int conn_handle; int reg_services; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  cli_sec_mask; int /*<<< orphan*/  open_services; int /*<<< orphan*/  colli_timer; scalar_t__ colli_tmr_on; scalar_t__ in_use; int /*<<< orphan*/  role; } ;
typedef  TYPE_2__ tBTA_AG_SCB ;
struct TYPE_15__ {int port_handle; } ;
struct TYPE_17__ {TYPE_1__ rfc; } ;
typedef  TYPE_3__ tBTA_AG_DATA ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_14__ {TYPE_2__* scb; } ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  BTA_AG_ACP ; 
 int BTA_AG_NUM_IDX ; 
 int BTA_AG_NUM_SCB ; 
 scalar_t__ FALSE ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int PORT_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_13__ bta_ag_cb ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_3__*) ; 
 int* bta_ag_svc_mask ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UINT16          lcid;
    int             i;
    tBTA_AG_SCB     *ag_scb, *other_scb;
    BD_ADDR         dev_addr;
    int             status;
    /* set role */
    p_scb->role = BTA_AG_ACP;
    FUNC0 ("bta_ag_rfc_acp_open: serv_handle0 = %d serv_handle1 = %d",
                       p_scb->serv_handle[0], p_scb->serv_handle[1]);
    /* get bd addr of peer */
    if (PORT_SUCCESS != (status=FUNC1(p_data->rfc.port_handle, dev_addr, &lcid))) {
        FUNC0 ("bta_ag_rfc_acp_open error PORT_CheckConnection returned status %d", status);
    }
    /* Collision Handling */
    for (i = 0, ag_scb = &bta_ag_cb.scb[0]; i < BTA_AG_NUM_SCB; i++, ag_scb++) {
        if ((ag_scb->in_use) && (ag_scb->colli_tmr_on)) {
            /* stop collision timer */
            ag_scb->colli_tmr_on = FALSE;
            FUNC9 (&ag_scb->colli_timer);

            if (FUNC2 (dev_addr, ag_scb->peer_addr) == 0) {
                /* If incoming and outgoing device are same, nothing more to do.            */
                /* Outgoing conn will be aborted because we have successful incoming conn.  */
            } else {
                /* Resume outgoing connection. */
                other_scb = FUNC6 (p_scb);
                if (other_scb) {
                    FUNC3(other_scb->peer_addr, ag_scb->peer_addr);
                    other_scb->open_services = ag_scb->open_services;
                    other_scb->cli_sec_mask = ag_scb->cli_sec_mask;
                    FUNC7 (other_scb);
                }
            }
            break;
        }
    }
    FUNC3 (p_scb->peer_addr, dev_addr);
    /* determine connected service from port handle */
    for (i = 0; i < BTA_AG_NUM_IDX; i++) {
        FUNC0 ("bta_ag_rfc_acp_open: i = %d serv_handle = %d port_handle = %d",
                           i, p_scb->serv_handle[i], p_data->rfc.port_handle);
        if (p_scb->serv_handle[i] == p_data->rfc.port_handle) {
            p_scb->conn_service = i;
            p_scb->conn_handle = p_data->rfc.port_handle;
            break;
        }
    }
    FUNC0 ("bta_ag_rfc_acp_open: conn_service = %d conn_handle = %d",
                       p_scb->conn_service, p_scb->conn_handle);
    /* close any unopened server */
    FUNC4(p_scb, (p_scb->reg_services & ~bta_ag_svc_mask[p_scb->conn_service]));
    /* do service discovery to get features */
    FUNC5(p_scb, bta_ag_svc_mask[p_scb->conn_service]);
    /* continue with common open processing */
    FUNC8(p_scb, p_data);
}