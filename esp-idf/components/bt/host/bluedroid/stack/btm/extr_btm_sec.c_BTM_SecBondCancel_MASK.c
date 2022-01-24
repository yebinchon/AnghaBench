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
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ sec_state; scalar_t__ hci_handle; } ;
typedef  TYPE_1__ tBTM_SEC_DEV_REC ;
struct TYPE_6__ {scalar_t__ pairing_state; int pairing_flags; int /*<<< orphan*/  pairing_bda; } ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BTM_NOT_AUTHORIZED ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int BTM_PAIR_FLAGS_DISC_WHEN_DONE ; 
 int BTM_PAIR_FLAGS_LE_ACTIVE ; 
 int BTM_PAIR_FLAGS_WE_CANCEL_DD ; 
 int BTM_PAIR_FLAGS_WE_STARTED_DD ; 
 scalar_t__ BTM_PAIR_STATE_GET_REM_NAME ; 
 scalar_t__ BTM_PAIR_STATE_IDLE ; 
 scalar_t__ BTM_PAIR_STATE_WAIT_LOCAL_PIN ; 
 scalar_t__ BTM_SEC_INVALID_HANDLE ; 
 scalar_t__ BTM_SEC_STATE_AUTHENTICATING ; 
 scalar_t__ BTM_SEC_STATE_DISCONNECTING ; 
 scalar_t__ BTM_SEC_STATE_DISCONNECTING_BOTH ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  BTM_UNKNOWN_ADDR ; 
 int /*<<< orphan*/  BTM_WRONG_MODE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HCI_ERR_PEER_USER ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__ btm_cb ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tBTM_STATUS FUNC11 (BD_ADDR bd_addr)
{
    tBTM_SEC_DEV_REC *p_dev_rec;
#if (BT_USE_TRACES == TRUE && SMP_INCLUDED == TRUE)
    FUNC1 ("BTM_SecBondCancel()  State: %s flags:0x%x\n",
                   FUNC5 (btm_cb.pairing_state), btm_cb.pairing_flags);
#endif  ///BT_USE_TRACES == TRUE && SMP_INCLUDED == TRUE
    if (((p_dev_rec = FUNC4 (bd_addr)) == NULL)
            ||  (FUNC10 (btm_cb.pairing_bda, bd_addr, BD_ADDR_LEN) != 0) ) {
        return BTM_UNKNOWN_ADDR;
    }

#if SMP_INCLUDED == TRUE
    if (btm_cb.pairing_flags & BTM_PAIR_FLAGS_LE_ACTIVE) {
        if (p_dev_rec->sec_state == BTM_SEC_STATE_AUTHENTICATING) {
            FUNC2 ("Cancel LE pairing\n");
            if (FUNC3(bd_addr)) {
                return BTM_CMD_STARTED;
            }
        }
        return BTM_WRONG_MODE;
    }

#endif
    FUNC2 ("hci_handle:0x%x sec_state:%d\n", p_dev_rec->hci_handle, p_dev_rec->sec_state );
    if (BTM_PAIR_STATE_WAIT_LOCAL_PIN == btm_cb.pairing_state &&
            BTM_PAIR_FLAGS_WE_STARTED_DD & btm_cb.pairing_flags) {
        /* pre-fetching pin for dedicated bonding */
        FUNC6();
        return BTM_SUCCESS;
    }

    /* If this BDA is in a bonding procedure */
    if ( (btm_cb.pairing_state != BTM_PAIR_STATE_IDLE)
            &&  (btm_cb.pairing_flags & BTM_PAIR_FLAGS_WE_STARTED_DD)) {
        /* If the HCI link is up */
        if (p_dev_rec->hci_handle != BTM_SEC_INVALID_HANDLE) {
            /* If some other thread disconnecting, we do not send second command */
            if ((p_dev_rec->sec_state == BTM_SEC_STATE_DISCONNECTING) ||
                    (p_dev_rec->sec_state == BTM_SEC_STATE_DISCONNECTING_BOTH)) {
                return (BTM_CMD_STARTED);
            }

            /* If the HCI link was set up by Bonding process */
            if (btm_cb.pairing_flags & BTM_PAIR_FLAGS_DISC_WHEN_DONE) {
                return FUNC7(p_dev_rec, HCI_ERR_PEER_USER, p_dev_rec->hci_handle);
            } else {
                FUNC9(bd_addr, FALSE);
            }

            return BTM_NOT_AUTHORIZED;
        } else { /*HCI link is not up */
            /* If the HCI link creation was started by Bonding process */
            if (btm_cb.pairing_flags & BTM_PAIR_FLAGS_DISC_WHEN_DONE) {
                if (FUNC8(bd_addr)) {
                    return BTM_CMD_STARTED;
                }

                return BTM_NO_RESOURCES;
            }
            if (btm_cb.pairing_state == BTM_PAIR_STATE_GET_REM_NAME) {
                FUNC0();
                btm_cb.pairing_flags |= BTM_PAIR_FLAGS_WE_CANCEL_DD;
                return BTM_CMD_STARTED;
            }
            return BTM_NOT_AUTHORIZED;
        }
    }
    return BTM_WRONG_MODE;
}