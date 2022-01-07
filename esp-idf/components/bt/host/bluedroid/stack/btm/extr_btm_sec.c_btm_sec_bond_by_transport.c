
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ tBT_TRANSPORT ;
typedef scalar_t__ tBTM_STATUS ;
struct TYPE_13__ {int sec_flags; scalar_t__ hci_handle; scalar_t__ ble_hci_handle; int* dev_class; int sm4; int sec_state; scalar_t__** features; int trusted_mask; void* is_originator; int security_required; scalar_t__ pin_code_length; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
struct TYPE_14__ {scalar_t__ hci_handle; } ;
typedef TYPE_3__ tACL_CONN ;
typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
struct TYPE_12__ {scalar_t__ pin_type; } ;
struct TYPE_16__ {scalar_t__ pairing_state; int security_mode; void* pin_type_changed; TYPE_1__ cfg; int pairing_flags; int pairing_bda; int pin_code; scalar_t__ pin_code_len; } ;
struct TYPE_15__ {int (* supports_simple_pairing ) () ;} ;
typedef scalar_t__* BD_ADDR ;


 scalar_t__ BD_ADDR_LEN ;
 scalar_t__ BTM_CMD_STARTED ;
 int BTM_COD_MAJOR_CLASS_MASK ;
 int BTM_COD_MAJOR_PERIPHERAL ;
 int BTM_COD_MINOR_KEYBOARD ;
 scalar_t__ BTM_DeleteStoredLinkKey (scalar_t__*,int *) ;
 scalar_t__ BTM_NO_RESOURCES ;
 int BTM_PAIR_FLAGS_LE_ACTIVE ;
 int BTM_PAIR_FLAGS_WE_STARTED_DD ;
 scalar_t__ BTM_PAIR_STATE_GET_REM_NAME ;
 scalar_t__ BTM_PAIR_STATE_IDLE ;
 scalar_t__ BTM_PAIR_STATE_WAIT_AUTH_COMPLETE ;
 scalar_t__ BTM_PAIR_STATE_WAIT_PIN_REQ ;
 int BTM_ReadRemoteDeviceName (scalar_t__*,int *,scalar_t__) ;
 int BTM_SEC_AUTHENTICATED ;
 int BTM_SEC_COPY_TRUSTED_DEVICE (int *,int ) ;
 int BTM_SEC_ENCRYPTED ;
 scalar_t__ BTM_SEC_INVALID_HANDLE ;
 scalar_t__ BTM_SEC_IS_SM4_UNKNOWN (int) ;
 int BTM_SEC_LE_AUTHENTICATED ;
 int BTM_SEC_LE_MASK ;
 int BTM_SEC_LINK_KEY_AUTHED ;
 int BTM_SEC_LINK_KEY_KNOWN ;
 int BTM_SEC_MODE_SC ;
 int BTM_SEC_MODE_SP ;
 int BTM_SEC_MODE_SP_DEBUG ;
 int BTM_SEC_NAME_KNOWN ;
 int BTM_SEC_OUT_AUTHENTICATE ;
 int BTM_SEC_ROLE_SWITCHED ;
 int BTM_SEC_STATE_AUTHENTICATING ;
 int BTM_SM4_CONN_PEND ;
 int BTM_SM4_KNOWN ;
 scalar_t__ BTM_SUCCESS ;
 int BTM_TRACE_API (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int BTM_TRACE_DEBUG (char*,scalar_t__,...) ;
 int BTM_TRACE_ERROR (char*,int ) ;
 int BTM_TRACE_EVENT (char*,int,scalar_t__,...) ;
 int BTM_TRACE_WARNING (char*) ;
 scalar_t__ BTM_WRONG_MODE ;
 scalar_t__ BT_TRANSPORT_BR_EDR ;
 scalar_t__ BT_TRANSPORT_LE ;
 scalar_t__ HCI_EXT_FEATURES_PAGE_MAX ;
 scalar_t__ HCI_PIN_TYPE_FIXED ;
 scalar_t__ PIN_CODE_LEN ;
 scalar_t__ SMP_Pair (scalar_t__*) ;
 scalar_t__ SMP_STARTED ;
 void* TRUE ;
 TYPE_3__* btm_bda_to_acl (scalar_t__*,scalar_t__) ;
 int btm_ble_init_pseudo_addr (TYPE_2__*,scalar_t__*) ;
 TYPE_9__ btm_cb ;
 TYPE_2__* btm_find_or_alloc_dev (scalar_t__*) ;
 int btm_pair_state_descr (scalar_t__) ;
 int btm_sec_change_pairing_state (scalar_t__) ;
 scalar_t__ btm_sec_check_prefetch_pin (TYPE_2__*) ;
 scalar_t__ btm_sec_dd_create_conn (TYPE_2__*) ;
 int btm_sec_start_authentication (TYPE_2__*) ;
 int btsnd_hcic_write_pin_type (scalar_t__) ;
 TYPE_4__* controller_get_interface () ;
 int l2cu_update_lcb_4_bonding (scalar_t__*,void*) ;
 int memcpy (int ,scalar_t__*,scalar_t__) ;
 int stub1 () ;
 int stub2 () ;

tBTM_STATUS btm_sec_bond_by_transport (BD_ADDR bd_addr, tBT_TRANSPORT transport,
                                       UINT8 pin_len, UINT8 *p_pin, UINT32 trusted_mask[])
{
    tBTM_SEC_DEV_REC *p_dev_rec;
    tBTM_STATUS status;

    UINT8 *p_features;

    UINT8 ii;
    tACL_CONN *p = btm_bda_to_acl(bd_addr, transport);
    BTM_TRACE_API ("btm_sec_bond_by_transport BDA: %02x:%02x:%02x:%02x:%02x:%02x\n",
                   bd_addr[0], bd_addr[1], bd_addr[2], bd_addr[3], bd_addr[4], bd_addr[5]);

    BTM_TRACE_DEBUG("btm_sec_bond_by_transport: Transport used %d\n" , transport);



    if (btm_cb.pairing_state != BTM_PAIR_STATE_IDLE) {

        BTM_TRACE_ERROR ("BTM_SecBond: already busy in state: %s\n", btm_pair_state_descr(btm_cb.pairing_state));

        return (BTM_WRONG_MODE);
    }

    if ((p_dev_rec = btm_find_or_alloc_dev (bd_addr)) == ((void*)0)) {
        return (BTM_NO_RESOURCES);
    }

    BTM_TRACE_DEBUG ("before update sec_flags=0x%x\n", p_dev_rec->sec_flags);


    if ( ((p_dev_rec->hci_handle != BTM_SEC_INVALID_HANDLE) && transport == BT_TRANSPORT_BR_EDR
            && (p_dev_rec->sec_flags & BTM_SEC_AUTHENTICATED))

            || ((p_dev_rec->ble_hci_handle != BTM_SEC_INVALID_HANDLE) && transport == BT_TRANSPORT_LE
                && (p_dev_rec->sec_flags & BTM_SEC_LE_AUTHENTICATED))


       ) {
        BTM_TRACE_WARNING("BTM_SecBond -> Already Paired\n");
        return (BTM_SUCCESS);
    }


    if ((BTM_DeleteStoredLinkKey (bd_addr, ((void*)0))) != BTM_SUCCESS) {
        return (BTM_NO_RESOURCES);
    }



    if (p_pin && (pin_len <= PIN_CODE_LEN) && (pin_len != 0)) {
        btm_cb.pin_code_len = pin_len;
        p_dev_rec->pin_code_length = pin_len;
        memcpy (btm_cb.pin_code, p_pin, PIN_CODE_LEN);
    }


    memcpy (btm_cb.pairing_bda, bd_addr, BD_ADDR_LEN);

    btm_cb.pairing_flags = BTM_PAIR_FLAGS_WE_STARTED_DD;

    p_dev_rec->security_required = BTM_SEC_OUT_AUTHENTICATE;
    p_dev_rec->is_originator = TRUE;
    if (trusted_mask) {
        BTM_SEC_COPY_TRUSTED_DEVICE(trusted_mask, p_dev_rec->trusted_mask);
    }


    if (transport == BT_TRANSPORT_LE) {
        btm_ble_init_pseudo_addr (p_dev_rec, bd_addr);
        p_dev_rec->sec_flags &= ~ BTM_SEC_LE_MASK;

        if (SMP_Pair(bd_addr) == SMP_STARTED) {
            btm_cb.pairing_flags |= BTM_PAIR_FLAGS_LE_ACTIVE;
            p_dev_rec->sec_state = BTM_SEC_STATE_AUTHENTICATING;
            btm_sec_change_pairing_state (BTM_PAIR_STATE_WAIT_AUTH_COMPLETE);
            return BTM_CMD_STARTED;
        }

        btm_cb.pairing_flags = 0;
        return (BTM_NO_RESOURCES);
    }


    p_dev_rec->sec_flags &= ~(BTM_SEC_LINK_KEY_KNOWN | BTM_SEC_AUTHENTICATED | BTM_SEC_ENCRYPTED
                              | BTM_SEC_ROLE_SWITCHED | BTM_SEC_LINK_KEY_AUTHED);


    BTM_TRACE_DEBUG ("after update sec_flags=0x%x\n", p_dev_rec->sec_flags);


    if (!controller_get_interface()->supports_simple_pairing()) {



        if (((p_dev_rec->dev_class[1] & BTM_COD_MAJOR_CLASS_MASK) == BTM_COD_MAJOR_PERIPHERAL)
                && (p_dev_rec->dev_class[2] & BTM_COD_MINOR_KEYBOARD)
                && (btm_cb.cfg.pin_type != HCI_PIN_TYPE_FIXED)) {
            btm_cb.pin_type_changed = TRUE;
            btsnd_hcic_write_pin_type (HCI_PIN_TYPE_FIXED);
        }
    }


    for (ii = 0; ii <= HCI_EXT_FEATURES_PAGE_MAX; ii++) {

        p_features = p_dev_rec->features[ii];

        BTM_TRACE_EVENT("  remote_features page[%1d] = %02x-%02x-%02x-%02x\n",
                        ii, p_features[0], p_features[1], p_features[2], p_features[3]);
        BTM_TRACE_EVENT("                              %02x-%02x-%02x-%02x\n",
                        p_features[4], p_features[5], p_features[6], p_features[7]);
    }

    BTM_TRACE_EVENT ("BTM_SecBond: Remote sm4: 0x%x  HCI Handle: 0x%04x\n", p_dev_rec->sm4, p_dev_rec->hci_handle);


    p_dev_rec->sec_flags &= ~BTM_SEC_NAME_KNOWN;



    if (p && p->hci_handle != BTM_SEC_INVALID_HANDLE) {
        if (!btm_sec_start_authentication (p_dev_rec)) {
            return (BTM_NO_RESOURCES);
        }

        btm_sec_change_pairing_state (BTM_PAIR_STATE_WAIT_PIN_REQ);


        l2cu_update_lcb_4_bonding (bd_addr, TRUE);
        return (BTM_CMD_STARTED);
    }

    BTM_TRACE_DEBUG ("sec mode: %d sm4:x%x\n", btm_cb.security_mode, p_dev_rec->sm4);
    if (!controller_get_interface()->supports_simple_pairing()
            || (p_dev_rec->sm4 == BTM_SM4_KNOWN)) {
        if ( btm_sec_check_prefetch_pin (p_dev_rec) ) {
            return (BTM_CMD_STARTED);
        }
    }
    if ((btm_cb.security_mode == BTM_SEC_MODE_SP ||
            btm_cb.security_mode == BTM_SEC_MODE_SP_DEBUG ||
            btm_cb.security_mode == BTM_SEC_MODE_SC) &&
            BTM_SEC_IS_SM4_UNKNOWN(p_dev_rec->sm4)) {

        if ((p_dev_rec->sm4 & BTM_SM4_CONN_PEND) == 0) {



            btm_sec_change_pairing_state (BTM_PAIR_STATE_GET_REM_NAME);
            BTM_ReadRemoteDeviceName(bd_addr, ((void*)0), BT_TRANSPORT_BR_EDR);
        } else {

            btm_sec_change_pairing_state (BTM_PAIR_STATE_WAIT_PIN_REQ);
        }

        BTM_TRACE_DEBUG ("State:%s sm4: 0x%x sec_state:%d\n",
                         btm_pair_state_descr (btm_cb.pairing_state), p_dev_rec->sm4, p_dev_rec->sec_state);

        return BTM_CMD_STARTED;
    }


    status = btm_sec_dd_create_conn(p_dev_rec);

    if (status != BTM_CMD_STARTED) {
        btm_sec_change_pairing_state (BTM_PAIR_STATE_IDLE);
    }

    return status;
}
