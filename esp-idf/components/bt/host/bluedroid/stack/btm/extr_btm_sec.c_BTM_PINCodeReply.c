
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ hci_handle; int sm4; int sec_bd_name; int dev_class; scalar_t__ bd_addr; int sec_flags; scalar_t__ pin_code_length; int trusted_mask; int security_required; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
struct TYPE_6__ {int (* p_auth_complete_callback ) (scalar_t__,int ,int ,int ) ;} ;
struct TYPE_8__ {scalar_t__ pairing_state; int pairing_flags; int acl_disc_reason; scalar_t__ security_mode_changed; scalar_t__ pin_code_len_saved; int pin_code; scalar_t__ pin_code_len; TYPE_1__ api; int pairing_bda; } ;
typedef int BD_ADDR ;
typedef int APPL_AUTH_WRITE_EXCEPTION ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_ILLEGAL_VALUE ;
 int BTM_PAIR_FLAGS_DISC_WHEN_DONE ;
 int BTM_PAIR_FLAGS_PEER_STARTED_DD ;
 int BTM_PAIR_FLAGS_REJECTED_CONNECT ;
 int BTM_PAIR_FLAGS_WE_STARTED_DD ;
 int BTM_PAIR_STATE_IDLE ;
 int BTM_PAIR_STATE_WAIT_AUTH_COMPLETE ;
 scalar_t__ BTM_PAIR_STATE_WAIT_LOCAL_PIN ;
 int BTM_PAIR_STATE_WAIT_PIN_REQ ;
 int BTM_SEC_16_DIGIT_PIN_AUTHED ;
 int BTM_SEC_COPY_TRUSTED_DEVICE (int *,int ) ;
 scalar_t__ BTM_SEC_INVALID_HANDLE ;
 int BTM_SEC_LINK_KEY_AUTHED ;
 int BTM_SEC_NONE ;
 int BTM_SM4_CONN_PEND ;
 scalar_t__ BTM_SUCCESS ;
 int BTM_TRACE_API (char*,int ,int,scalar_t__,scalar_t__) ;
 int BTM_TRACE_ERROR (char*) ;
 int BTM_TRACE_EVENT (char*,scalar_t__,scalar_t__) ;
 int BTM_TRACE_WARNING (char*,...) ;
 scalar_t__ FALSE ;
 int HCI_ERR_AUTH_FAILURE ;
 int HCI_ERR_HOST_REJECT_SECURITY ;
 int HCI_SUCCESS ;
 scalar_t__ PIN_CODE_LEN ;
 scalar_t__ TRUE ;
 TYPE_5__ btm_cb ;
 TYPE_2__* btm_find_dev (int ) ;
 int btm_pair_state_descr (scalar_t__) ;
 int btm_sec_change_pairing_state (int ) ;
 scalar_t__ btm_sec_dd_create_conn (TYPE_2__*) ;
 int btsnd_hcic_pin_code_neg_reply (int ) ;
 int btsnd_hcic_pin_code_req_reply (int ,scalar_t__,scalar_t__*) ;
 int btsnd_hcic_write_auth_enable (scalar_t__) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (int ,scalar_t__*,scalar_t__) ;
 int stub1 (scalar_t__,int ,int ,int ) ;

void BTM_PINCodeReply (BD_ADDR bd_addr, UINT8 res, UINT8 pin_len, UINT8 *p_pin, UINT32 trusted_mask[])
{
    tBTM_SEC_DEV_REC *p_dev_rec;

    BTM_TRACE_API ("BTM_PINCodeReply(): PairState: %s   PairFlags: 0x%02x  PinLen:%d  Result:%d\n",
                   btm_pair_state_descr(btm_cb.pairing_state), btm_cb.pairing_flags, pin_len, res);


    if (btm_cb.pairing_state != BTM_PAIR_STATE_WAIT_LOCAL_PIN) {
        BTM_TRACE_WARNING ("BTM_PINCodeReply() - Wrong State: %d\n", btm_cb.pairing_state);
        return;
    }

    if (memcmp (bd_addr, btm_cb.pairing_bda, BD_ADDR_LEN) != 0) {
        BTM_TRACE_ERROR ("BTM_PINCodeReply() - Wrong BD Addr\n");
        return;
    }

    if ((p_dev_rec = btm_find_dev (bd_addr)) == ((void*)0)) {
        BTM_TRACE_ERROR ("BTM_PINCodeReply() - no dev CB\n");
        return;
    }

    if ( (pin_len > PIN_CODE_LEN) || (pin_len == 0) || (p_pin == ((void*)0)) ) {
        res = BTM_ILLEGAL_VALUE;
    }

    if (res != BTM_SUCCESS) {

        if ((btm_cb.pairing_flags & BTM_PAIR_FLAGS_PEER_STARTED_DD) ||
                ((btm_cb.pairing_flags & BTM_PAIR_FLAGS_WE_STARTED_DD) &&
                 (btm_cb.pairing_flags & BTM_PAIR_FLAGS_DISC_WHEN_DONE)) ) {

            btm_sec_change_pairing_state (BTM_PAIR_STATE_WAIT_AUTH_COMPLETE);
            btm_cb.acl_disc_reason = HCI_ERR_HOST_REJECT_SECURITY;

            btsnd_hcic_pin_code_neg_reply (bd_addr);
        } else {
            p_dev_rec->security_required = BTM_SEC_NONE;
            btm_sec_change_pairing_state (BTM_PAIR_STATE_IDLE);
        }
        return;
    }
    if (trusted_mask) {
        BTM_SEC_COPY_TRUSTED_DEVICE(trusted_mask, p_dev_rec->trusted_mask);
    }
    p_dev_rec->sec_flags |= BTM_SEC_LINK_KEY_AUTHED;
    if (pin_len >= 16) {
        p_dev_rec->sec_flags |= BTM_SEC_16_DIGIT_PIN_AUTHED;
    }

    if ( (btm_cb.pairing_flags & BTM_PAIR_FLAGS_WE_STARTED_DD)
            && (p_dev_rec->hci_handle == BTM_SEC_INVALID_HANDLE)
            && (btm_cb.security_mode_changed == FALSE) ) {

        btm_cb.pin_code_len = pin_len;
        p_dev_rec->pin_code_length = pin_len;
        memcpy (btm_cb.pin_code, p_pin, pin_len);

        btm_cb.security_mode_changed = TRUE;



        {
            btsnd_hcic_write_auth_enable (TRUE);
        }

        btm_cb.acl_disc_reason = 0xff ;



        if (btm_cb.pairing_flags & BTM_PAIR_FLAGS_REJECTED_CONNECT) {
            BTM_TRACE_WARNING ("BTM_PINCodeReply(): waiting HCI_Connection_Complete after rejected incoming connection\n");


            btm_sec_change_pairing_state (BTM_PAIR_STATE_WAIT_PIN_REQ);
        }

        else if (p_dev_rec->sm4 & BTM_SM4_CONN_PEND) {
            BTM_TRACE_WARNING ("BTM_PINCodeReply(): link is connecting so wait pin code request from peer\n");
            btm_sec_change_pairing_state (BTM_PAIR_STATE_WAIT_PIN_REQ);
        } else if (btm_sec_dd_create_conn(p_dev_rec) != BTM_CMD_STARTED) {
            btm_sec_change_pairing_state (BTM_PAIR_STATE_IDLE);
            p_dev_rec->sec_flags &= ~BTM_SEC_LINK_KEY_AUTHED;

            if (btm_cb.api.p_auth_complete_callback) {
                (*btm_cb.api.p_auth_complete_callback) (p_dev_rec->bd_addr, p_dev_rec->dev_class,
                                                        p_dev_rec->sec_bd_name, HCI_ERR_AUTH_FAILURE);
            }
        }
        return;
    }

    btm_sec_change_pairing_state (BTM_PAIR_STATE_WAIT_AUTH_COMPLETE);
    btm_cb.acl_disc_reason = HCI_SUCCESS;
    btsnd_hcic_pin_code_req_reply (bd_addr, pin_len, p_pin);
}
