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
struct TYPE_3__ {int /*<<< orphan*/  negotiated_codec; void* send_at_reply; void* svc_conn; int /*<<< orphan*/  role; scalar_t__ chld_features; scalar_t__ peer_features; scalar_t__ conn_handle; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_HF_CLIENT_ACP ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_FAIL_RFCOMM ; 
 int /*<<< orphan*/  BTM_SCO_CODEC_CVSD ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ bta_hf_client_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(tBTA_HF_CLIENT_DATA *p_data)
{
    FUNC0(p_data);

    /* reinitialize stuff */
    bta_hf_client_cb.scb.conn_handle = 0;
    bta_hf_client_cb.scb.peer_features = 0;
    bta_hf_client_cb.scb.chld_features = 0;
    bta_hf_client_cb.scb.role = BTA_HF_CLIENT_ACP;
    bta_hf_client_cb.scb.svc_conn = FALSE;
    bta_hf_client_cb.scb.send_at_reply = FALSE;
    bta_hf_client_cb.scb.negotiated_codec = BTM_SCO_CODEC_CVSD;

    FUNC1();

    /* reopen server */
    FUNC3();

    /* call open cback w. failure */
    FUNC2(NULL, BTA_HF_CLIENT_FAIL_RFCOMM);
}