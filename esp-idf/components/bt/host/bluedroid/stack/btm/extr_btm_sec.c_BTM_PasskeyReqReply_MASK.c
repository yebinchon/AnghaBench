#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ hci_handle; int sec_flags; } ;
typedef  TYPE_1__ tBTM_SEC_DEV_REC ;
typedef  scalar_t__ UINT32 ;
struct TYPE_6__ {scalar_t__ pairing_state; void* acl_disc_reason; int /*<<< orphan*/  pairing_bda; } ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 scalar_t__ BTM_ILLEGAL_VALUE ; 
 scalar_t__ BTM_MAX_PASSKEY_VAL ; 
 scalar_t__ BTM_PAIR_STATE_IDLE ; 
 scalar_t__ BTM_PAIR_STATE_KEY_ENTRY ; 
 scalar_t__ BTM_PAIR_STATE_WAIT_AUTH_COMPLETE ; 
 scalar_t__ BTM_SEC_INVALID_HANDLE ; 
 int BTM_SEC_LINK_KEY_AUTHED ; 
 int BTM_SEC_LINK_KEY_KNOWN ; 
 scalar_t__ BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_ERR_AUTH_FAILURE ; 
 void* HCI_ERR_HOST_REJECT_SECURITY ; 
 void* HCI_SUCCESS ; 
 TYPE_4__ btm_cb ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(tBTM_STATUS res, BD_ADDR bd_addr, UINT32 passkey)
{
#if (BT_USE_TRACES == TRUE && SMP_INCLUDED == TRUE)
    FUNC1 ("BTM_PasskeyReqReply: State: %s  res:%d\n",
                   FUNC3(btm_cb.pairing_state), res);
#endif  ///BT_USE_TRACES == TRUE && SMP_INCLUDED == TRUE
    if ( (btm_cb.pairing_state == BTM_PAIR_STATE_IDLE)
            ||  (FUNC8 (btm_cb.pairing_bda, bd_addr, BD_ADDR_LEN) != 0) ) {
        return;
    }

    /* If timeout already expired or has been canceled, ignore the reply */
    if ( (btm_cb.pairing_state == BTM_PAIR_STATE_WAIT_AUTH_COMPLETE) && (res != BTM_SUCCESS) ) {
        tBTM_SEC_DEV_REC *p_dev_rec = FUNC2 (bd_addr);
        if (p_dev_rec != NULL) {
            btm_cb.acl_disc_reason = HCI_ERR_HOST_REJECT_SECURITY;

            if (p_dev_rec->hci_handle != BTM_SEC_INVALID_HANDLE) {
                FUNC5 (p_dev_rec, HCI_ERR_AUTH_FAILURE, p_dev_rec->hci_handle);
            } else {
                FUNC0(bd_addr);
            }

            p_dev_rec->sec_flags &= ~(BTM_SEC_LINK_KEY_AUTHED | BTM_SEC_LINK_KEY_KNOWN);

            FUNC4 (BTM_PAIR_STATE_IDLE);
            return;
        }
    } else if (btm_cb.pairing_state != BTM_PAIR_STATE_KEY_ENTRY) {
        return;
    }

    if (passkey > BTM_MAX_PASSKEY_VAL) {
        res = BTM_ILLEGAL_VALUE;
    }

    FUNC4 (BTM_PAIR_STATE_WAIT_AUTH_COMPLETE);

    if (res != BTM_SUCCESS) {
        /* use BTM_PAIR_STATE_WAIT_AUTH_COMPLETE to report authentication failed event */
        btm_cb.acl_disc_reason = HCI_ERR_HOST_REJECT_SECURITY;
        FUNC6 (bd_addr);
    } else {
        btm_cb.acl_disc_reason = HCI_SUCCESS;
        FUNC7 (bd_addr, passkey);
    }
}