
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ sec_state; scalar_t__ hci_handle; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
struct TYPE_6__ {scalar_t__ pairing_state; int pairing_flags; int pairing_bda; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_CMD_STARTED ;
 int BTM_CancelRemoteDeviceName () ;
 int BTM_NOT_AUTHORIZED ;
 int BTM_NO_RESOURCES ;
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
 int BTM_SUCCESS ;
 int BTM_TRACE_API (char*,int ,int) ;
 int BTM_TRACE_DEBUG (char*,...) ;
 int BTM_UNKNOWN_ADDR ;
 int BTM_WRONG_MODE ;
 int FALSE ;
 int HCI_ERR_PEER_USER ;
 scalar_t__ SMP_PairCancel (int ) ;
 TYPE_4__ btm_cb ;
 TYPE_1__* btm_find_dev (int ) ;
 int btm_pair_state_descr (scalar_t__) ;
 int btm_sec_bond_cancel_complete () ;
 int btm_sec_send_hci_disconnect (TYPE_1__*,int ,scalar_t__) ;
 scalar_t__ btsnd_hcic_create_conn_cancel (int ) ;
 int l2cu_update_lcb_4_bonding (int ,int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;

tBTM_STATUS BTM_SecBondCancel (BD_ADDR bd_addr)
{
    tBTM_SEC_DEV_REC *p_dev_rec;

    BTM_TRACE_API ("BTM_SecBondCancel()  State: %s flags:0x%x\n",
                   btm_pair_state_descr (btm_cb.pairing_state), btm_cb.pairing_flags);

    if (((p_dev_rec = btm_find_dev (bd_addr)) == ((void*)0))
            || (memcmp (btm_cb.pairing_bda, bd_addr, BD_ADDR_LEN) != 0) ) {
        return BTM_UNKNOWN_ADDR;
    }


    if (btm_cb.pairing_flags & BTM_PAIR_FLAGS_LE_ACTIVE) {
        if (p_dev_rec->sec_state == BTM_SEC_STATE_AUTHENTICATING) {
            BTM_TRACE_DEBUG ("Cancel LE pairing\n");
            if (SMP_PairCancel(bd_addr)) {
                return BTM_CMD_STARTED;
            }
        }
        return BTM_WRONG_MODE;
    }


    BTM_TRACE_DEBUG ("hci_handle:0x%x sec_state:%d\n", p_dev_rec->hci_handle, p_dev_rec->sec_state );
    if (BTM_PAIR_STATE_WAIT_LOCAL_PIN == btm_cb.pairing_state &&
            BTM_PAIR_FLAGS_WE_STARTED_DD & btm_cb.pairing_flags) {

        btm_sec_bond_cancel_complete();
        return BTM_SUCCESS;
    }


    if ( (btm_cb.pairing_state != BTM_PAIR_STATE_IDLE)
            && (btm_cb.pairing_flags & BTM_PAIR_FLAGS_WE_STARTED_DD)) {

        if (p_dev_rec->hci_handle != BTM_SEC_INVALID_HANDLE) {

            if ((p_dev_rec->sec_state == BTM_SEC_STATE_DISCONNECTING) ||
                    (p_dev_rec->sec_state == BTM_SEC_STATE_DISCONNECTING_BOTH)) {
                return (BTM_CMD_STARTED);
            }


            if (btm_cb.pairing_flags & BTM_PAIR_FLAGS_DISC_WHEN_DONE) {
                return btm_sec_send_hci_disconnect(p_dev_rec, HCI_ERR_PEER_USER, p_dev_rec->hci_handle);
            } else {
                l2cu_update_lcb_4_bonding(bd_addr, FALSE);
            }

            return BTM_NOT_AUTHORIZED;
        } else {

            if (btm_cb.pairing_flags & BTM_PAIR_FLAGS_DISC_WHEN_DONE) {
                if (btsnd_hcic_create_conn_cancel(bd_addr)) {
                    return BTM_CMD_STARTED;
                }

                return BTM_NO_RESOURCES;
            }
            if (btm_cb.pairing_state == BTM_PAIR_STATE_GET_REM_NAME) {
                BTM_CancelRemoteDeviceName();
                btm_cb.pairing_flags |= BTM_PAIR_FLAGS_WE_CANCEL_DD;
                return BTM_CMD_STARTED;
            }
            return BTM_NOT_AUTHORIZED;
        }
    }
    return BTM_WRONG_MODE;
}
