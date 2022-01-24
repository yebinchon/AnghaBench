#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  port_handle; } ;
struct TYPE_9__ {TYPE_2__ rfc; } ;
typedef  TYPE_3__ tBTA_HF_CLIENT_DATA ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_7__ {int /*<<< orphan*/  conn_handle; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  colli_timer; scalar_t__ colli_tmr_on; int /*<<< orphan*/  serv_handle; int /*<<< orphan*/  role; } ;
struct TYPE_10__ {TYPE_1__ scb; } ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_ACP ; 
 scalar_t__ FALSE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int PORT_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__ bta_hf_client_cb ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(tBTA_HF_CLIENT_DATA *p_data)
{
    UINT16          lcid;
    BD_ADDR         dev_addr;
    int             status;

    /* set role */
    bta_hf_client_cb.scb.role = BTA_HF_CLIENT_ACP;

    FUNC0 ("bta_hf_client_rfc_acp_open: serv_handle = %d rfc.port_handle = %d",
                      bta_hf_client_cb.scb.serv_handle, p_data->rfc.port_handle);

    /* get bd addr of peer */
    if (PORT_SUCCESS != (status = FUNC1(p_data->rfc.port_handle, dev_addr, &lcid))) {
        FUNC0 ("bta_hf_client_rfc_acp_open error PORT_CheckConnection returned status %d", status);
    }

    /* Collision Handling */
    if (bta_hf_client_cb.scb.colli_tmr_on) {
        /* stop collision timer */
        bta_hf_client_cb.scb.colli_tmr_on = FALSE;
        FUNC7 (&bta_hf_client_cb.scb.colli_timer);

        if (FUNC2 (dev_addr, bta_hf_client_cb.scb.peer_addr) == 0) {
            /* If incoming and outgoing device are same, nothing more to do.            */
            /* Outgoing conn will be aborted because we have successful incoming conn.  */
        } else {
            /* Resume outgoing connection. */
            FUNC5 ();
        }
    }

    FUNC3 (bta_hf_client_cb.scb.peer_addr, dev_addr);
    bta_hf_client_cb.scb.conn_handle = p_data->rfc.port_handle;

    /* do service discovery to get features */
    FUNC4();

    /* continue with open processing */
    FUNC6(p_data);
}