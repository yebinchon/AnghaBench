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
struct TYPE_3__ {int /*<<< orphan*/  conn_handle; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  peer_scn; int /*<<< orphan*/  cli_sec_mask; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_MTU ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_RFC_CLOSE_EVT ; 
 int /*<<< orphan*/  BTM_SEC_PROTO_RFCOMM ; 
 int /*<<< orphan*/  BTM_SEC_SERVICE_HF_HANDSFREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BT_PSM_RFCOMM ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ PORT_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UUID_SERVCLASS_HF_HANDSFREE ; 
 TYPE_2__ bta_hf_client_cb ; 
 int /*<<< orphan*/  bta_hf_client_mgmt_cback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(tBTA_HF_CLIENT_DATA *p_data)
{
    FUNC1(TRUE, "", BTM_SEC_SERVICE_HF_HANDSFREE,
                         bta_hf_client_cb.scb.cli_sec_mask, BT_PSM_RFCOMM,
                         BTM_SEC_PROTO_RFCOMM, bta_hf_client_cb.scb.peer_scn);

    if (FUNC2(UUID_SERVCLASS_HF_HANDSFREE, bta_hf_client_cb.scb.peer_scn,
                                FALSE, BTA_HF_CLIENT_MTU, bta_hf_client_cb.scb.peer_addr, &(bta_hf_client_cb.scb.conn_handle),
                                bta_hf_client_mgmt_cback) == PORT_SUCCESS) {
        FUNC3(bta_hf_client_cb.scb.conn_handle);
        FUNC0("bta_hf_client_rfc_do_open : conn_handle = %d", bta_hf_client_cb.scb.conn_handle);
    }
    /* RFCOMM create connection failed; send ourselves RFCOMM close event */
    else {
        FUNC4(BTA_HF_CLIENT_RFC_CLOSE_EVT, p_data);
    }
}