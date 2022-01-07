
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_4__ {int sec_flags; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
struct TYPE_5__ {scalar_t__ pairing_state; int acl_disc_reason; int pairing_bda; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_PAIR_STATE_WAIT_AUTH_COMPLETE ;
 scalar_t__ BTM_PAIR_STATE_WAIT_NUMERIC_CONFIRM ;
 int BTM_SEC_16_DIGIT_PIN_AUTHED ;
 int BTM_SEC_LINK_KEY_AUTHED ;
 scalar_t__ BTM_SUCCESS ;
 scalar_t__ BTM_SUCCESS_NO_SECURITY ;
 int BTM_TRACE_EVENT (char*,int ,scalar_t__) ;
 int FALSE ;
 int HCI_ERR_HOST_REJECT_SECURITY ;
 int HCI_SUCCESS ;
 int TRUE ;
 TYPE_3__ btm_cb ;
 TYPE_1__* btm_find_dev (int ) ;
 int btm_pair_state_descr (scalar_t__) ;
 int btm_sec_change_pairing_state (int ) ;
 int btsnd_hcic_user_conf_reply (int ,int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;

void BTM_ConfirmReqReply(tBTM_STATUS res, BD_ADDR bd_addr)
{
    tBTM_SEC_DEV_REC *p_dev_rec;

    BTM_TRACE_EVENT ("BTM_ConfirmReqReply() State: %s  Res: %u",
                     btm_pair_state_descr(btm_cb.pairing_state), res);


    if ( (btm_cb.pairing_state != BTM_PAIR_STATE_WAIT_NUMERIC_CONFIRM)
            || (memcmp (btm_cb.pairing_bda, bd_addr, BD_ADDR_LEN) != 0) ) {
        return;
    }

    btm_sec_change_pairing_state (BTM_PAIR_STATE_WAIT_AUTH_COMPLETE);

    if ( (res == BTM_SUCCESS) || (res == BTM_SUCCESS_NO_SECURITY) ) {
        btm_cb.acl_disc_reason = HCI_SUCCESS;

        if (res == BTM_SUCCESS) {
            if ((p_dev_rec = btm_find_dev (bd_addr)) != ((void*)0)) {
                p_dev_rec->sec_flags |= BTM_SEC_LINK_KEY_AUTHED;
            }
            p_dev_rec->sec_flags |= BTM_SEC_16_DIGIT_PIN_AUTHED;
        }

        btsnd_hcic_user_conf_reply (bd_addr, TRUE);
    } else {

        btm_cb.acl_disc_reason = HCI_ERR_HOST_REJECT_SECURITY;
        btsnd_hcic_user_conf_reply (bd_addr, FALSE);
    }
}
