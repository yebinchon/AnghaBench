#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_HF_CLIENT_DATA ;
struct TYPE_3__ {scalar_t__ deregister; int /*<<< orphan*/  peer_addr; scalar_t__ conn_handle; int /*<<< orphan*/  negotiated_codec; scalar_t__ send_at_reply; scalar_t__ svc_conn; int /*<<< orphan*/  role; scalar_t__ chld_features; scalar_t__ peer_features; } ;
struct TYPE_4__ {TYPE_1__ scb; int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_HF_CLIENT_ACP ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_CLOSE_EVT ; 
 int /*<<< orphan*/  BTA_ID_HS ; 
 int /*<<< orphan*/  BTM_SCO_CODEC_CVSD ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bd_addr_null ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ bta_hf_client_cb ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(tBTA_HF_CLIENT_DATA *p_data)
{
    FUNC0(p_data);

    /* reinitialize stuff */
    bta_hf_client_cb.scb.peer_features = 0;
    bta_hf_client_cb.scb.chld_features = 0;
    bta_hf_client_cb.scb.role = BTA_HF_CLIENT_ACP;
    bta_hf_client_cb.scb.svc_conn = FALSE;
    bta_hf_client_cb.scb.send_at_reply = FALSE;
    bta_hf_client_cb.scb.negotiated_codec = BTM_SCO_CODEC_CVSD;

    FUNC2();

    FUNC7(BTA_ID_HS, 1, bta_hf_client_cb.scb.peer_addr);

    /* call close cback */
    (*bta_hf_client_cb.p_cback)(BTA_HF_CLIENT_CLOSE_EVT, NULL);

    /* if not deregistering reopen server */
    if (bta_hf_client_cb.scb.deregister == FALSE) {
        /* Clear peer bd_addr so instance can be reused */
        FUNC1(bta_hf_client_cb.scb.peer_addr, bd_addr_null);

        /* start server as it might got closed on open*/
        FUNC6();

        bta_hf_client_cb.scb.conn_handle = 0;

        /* Make sure SCO is shutdown */
        FUNC5(NULL);

        FUNC8(BTA_ID_HS, 1, bta_hf_client_cb.scb.peer_addr);
    }
    /* else close port and deallocate scb */
    else {
        FUNC3();
        FUNC4();
    }
}