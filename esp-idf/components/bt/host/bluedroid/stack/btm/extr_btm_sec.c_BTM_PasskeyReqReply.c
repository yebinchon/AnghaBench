
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ hci_handle; int sec_flags; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef scalar_t__ UINT32 ;
struct TYPE_6__ {scalar_t__ pairing_state; void* acl_disc_reason; int pairing_bda; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_ILLEGAL_VALUE ;
 scalar_t__ BTM_MAX_PASSKEY_VAL ;
 scalar_t__ BTM_PAIR_STATE_IDLE ;
 scalar_t__ BTM_PAIR_STATE_KEY_ENTRY ;
 scalar_t__ BTM_PAIR_STATE_WAIT_AUTH_COMPLETE ;
 scalar_t__ BTM_SEC_INVALID_HANDLE ;
 int BTM_SEC_LINK_KEY_AUTHED ;
 int BTM_SEC_LINK_KEY_KNOWN ;
 scalar_t__ BTM_SUCCESS ;
 int BTM_SecBondCancel (int ) ;
 int BTM_TRACE_API (char*,int ,scalar_t__) ;
 int HCI_ERR_AUTH_FAILURE ;
 void* HCI_ERR_HOST_REJECT_SECURITY ;
 void* HCI_SUCCESS ;
 TYPE_4__ btm_cb ;
 TYPE_1__* btm_find_dev (int ) ;
 int btm_pair_state_descr (scalar_t__) ;
 int btm_sec_change_pairing_state (scalar_t__) ;
 int btm_sec_send_hci_disconnect (TYPE_1__*,int ,scalar_t__) ;
 int btsnd_hcic_user_passkey_neg_reply (int ) ;
 int btsnd_hcic_user_passkey_reply (int ,scalar_t__) ;
 scalar_t__ memcmp (int ,int ,int ) ;

void BTM_PasskeyReqReply(tBTM_STATUS res, BD_ADDR bd_addr, UINT32 passkey)
{

    BTM_TRACE_API ("BTM_PasskeyReqReply: State: %s  res:%d\n",
                   btm_pair_state_descr(btm_cb.pairing_state), res);

    if ( (btm_cb.pairing_state == BTM_PAIR_STATE_IDLE)
            || (memcmp (btm_cb.pairing_bda, bd_addr, BD_ADDR_LEN) != 0) ) {
        return;
    }


    if ( (btm_cb.pairing_state == BTM_PAIR_STATE_WAIT_AUTH_COMPLETE) && (res != BTM_SUCCESS) ) {
        tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev (bd_addr);
        if (p_dev_rec != ((void*)0)) {
            btm_cb.acl_disc_reason = HCI_ERR_HOST_REJECT_SECURITY;

            if (p_dev_rec->hci_handle != BTM_SEC_INVALID_HANDLE) {
                btm_sec_send_hci_disconnect (p_dev_rec, HCI_ERR_AUTH_FAILURE, p_dev_rec->hci_handle);
            } else {
                BTM_SecBondCancel(bd_addr);
            }

            p_dev_rec->sec_flags &= ~(BTM_SEC_LINK_KEY_AUTHED | BTM_SEC_LINK_KEY_KNOWN);

            btm_sec_change_pairing_state (BTM_PAIR_STATE_IDLE);
            return;
        }
    } else if (btm_cb.pairing_state != BTM_PAIR_STATE_KEY_ENTRY) {
        return;
    }

    if (passkey > BTM_MAX_PASSKEY_VAL) {
        res = BTM_ILLEGAL_VALUE;
    }

    btm_sec_change_pairing_state (BTM_PAIR_STATE_WAIT_AUTH_COMPLETE);

    if (res != BTM_SUCCESS) {

        btm_cb.acl_disc_reason = HCI_ERR_HOST_REJECT_SECURITY;
        btsnd_hcic_user_passkey_neg_reply (bd_addr);
    } else {
        btm_cb.acl_disc_reason = HCI_SUCCESS;
        btsnd_hcic_user_passkey_reply (bd_addr, passkey);
    }
}
