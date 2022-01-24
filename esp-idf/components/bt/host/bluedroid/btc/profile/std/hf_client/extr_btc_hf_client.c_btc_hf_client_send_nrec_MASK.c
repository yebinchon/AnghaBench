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
typedef  int /*<<< orphan*/  bt_status_t ;
struct TYPE_3__ {int peer_feat; int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {TYPE_1__ btc_hf_client_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_HF_CLIENT_AT_CMD_NREC ; 
 int BTA_HF_CLIENT_PEER_FEAT_ECNR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  BT_STATUS_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ hf_client_local_param ; 

__attribute__((used)) static bt_status_t FUNC2(void)
{
    FUNC1();

    if (hf_client_local_param.btc_hf_client_cb.peer_feat & BTA_HF_CLIENT_PEER_FEAT_ECNR)
    {
        FUNC0(hf_client_local_param.btc_hf_client_cb.handle, BTA_HF_CLIENT_AT_CMD_NREC, 0, 0, NULL);
        return BT_STATUS_SUCCESS;
    }
    return BT_STATUS_UNSUPPORTED;
}