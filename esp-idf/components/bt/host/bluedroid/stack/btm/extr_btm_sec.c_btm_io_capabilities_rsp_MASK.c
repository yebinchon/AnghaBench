#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int io_cap; int oob_data; int auth_req; int /*<<< orphan*/  bd_addr; } ;
typedef  TYPE_2__ tBTM_SP_IO_RSP ;
typedef  int /*<<< orphan*/  tBTM_SP_EVT_DATA ;
struct TYPE_8__ {int rmt_io_caps; int rmt_auth_req; int /*<<< orphan*/  dev_class; int /*<<< orphan*/  trusted_mask; } ;
typedef  TYPE_3__ tBTM_SEC_DEV_REC ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_6__ {int /*<<< orphan*/  (* p_sp_callback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_9__ {scalar_t__ pairing_state; TYPE_1__ api; int /*<<< orphan*/  pairing_flags; int /*<<< orphan*/  connecting_dc; int /*<<< orphan*/  connecting_bda; int /*<<< orphan*/  pairing_bda; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int BTM_AUTH_DD_BOND ; 
 int /*<<< orphan*/  BTM_PAIR_FLAGS_PEER_STARTED_DD ; 
 scalar_t__ BTM_PAIR_STATE_IDLE ; 
 scalar_t__ BTM_PAIR_STATE_INCOMING_SSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTM_SP_IO_RSP_EVT ; 
 int /*<<< orphan*/  DEV_CLASS_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 TYPE_5__ btm_cb ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10 (UINT8 *p)
{
    tBTM_SEC_DEV_REC *p_dev_rec;
    tBTM_SP_IO_RSP evt_data;

    FUNC1 (evt_data.bd_addr, p);
    FUNC2 (evt_data.io_cap, p);
    FUNC2 (evt_data.oob_data, p);
    FUNC2 (evt_data.auth_req, p);

    /* Allocate a new device record or reuse the oldest one */
    p_dev_rec = FUNC3 (evt_data.bd_addr);

    /* If no security is in progress, this indicates incoming security */
    if (btm_cb.pairing_state == BTM_PAIR_STATE_IDLE) {
        FUNC8 (btm_cb.pairing_bda, evt_data.bd_addr, BD_ADDR_LEN);

        FUNC5 (BTM_PAIR_STATE_INCOMING_SSP);

        /* Make sure we reset the trusted mask to help against attacks */
        FUNC0(p_dev_rec->trusted_mask);

        /* work around for FW bug */
        FUNC4();
    }

    /* Notify L2CAP to increase timeout */
    FUNC6 (evt_data.bd_addr);

    /* We must have a device record here.
     * Use the connecting device's CoD for the connection */
    /* coverity[uninit_use_in_call]
    Event uninit_use_in_call: Using uninitialized element of array "evt_data.bd_addr" in call to function "memcmp"
    FALSE-POSITIVE error from Coverity test-tool. evt_data.bd_addr is set at the beginning with:     STREAM_TO_BDADDR (evt_data.bd_addr, p);
    */
    if (!FUNC7 (evt_data.bd_addr, btm_cb.connecting_bda, BD_ADDR_LEN)) {
        FUNC8 (p_dev_rec->dev_class, btm_cb.connecting_dc, DEV_CLASS_LEN);
    }

    /* peer sets dedicated bonding bit and we did not initiate dedicated bonding */
    if (btm_cb.pairing_state == BTM_PAIR_STATE_INCOMING_SSP /* peer initiated bonding */
            && (evt_data.auth_req & BTM_AUTH_DD_BOND) ) {          /* and dedicated bonding bit is set */
        btm_cb.pairing_flags |= BTM_PAIR_FLAGS_PEER_STARTED_DD;
    }

    /* save the IO capability in the device record */
    p_dev_rec->rmt_io_caps  = evt_data.io_cap;
    p_dev_rec->rmt_auth_req = evt_data.auth_req;

    if (btm_cb.api.p_sp_callback) {
        (*btm_cb.api.p_sp_callback) (BTM_SP_IO_RSP_EVT, (tBTM_SP_EVT_DATA *)&evt_data);
    }
}