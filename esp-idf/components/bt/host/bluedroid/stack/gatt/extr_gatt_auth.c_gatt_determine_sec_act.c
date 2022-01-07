
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ transport; int peer_bda; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef scalar_t__ tGATT_SEC_ACTION ;
struct TYPE_5__ {int auth_req; scalar_t__ operation; scalar_t__ op_subtype; TYPE_1__* p_tcb; } ;
typedef TYPE_2__ tGATT_CLCB ;
typedef int tGATT_AUTH_REQ ;
typedef scalar_t__ tBTM_BLE_SEC_REQ_ACT ;
typedef int UINT8 ;
typedef int BOOLEAN ;


 scalar_t__ BTM_BLE_SEC_REQ_ACT_DISCARD ;
 int BTM_GetSecurityFlagsByTransport (int ,int*,scalar_t__) ;
 int BTM_LE_KEY_LCSRK ;
 scalar_t__ BTM_LE_SEC_NONE ;
 int BTM_SEC_FLAG_ENCRYPTED ;
 int BTM_SEC_FLAG_LKEY_AUTHED ;
 int BTM_SEC_FLAG_LKEY_KNOWN ;
 scalar_t__ BT_TRANSPORT_LE ;
 int FALSE ;
 scalar_t__ GATTC_OPTYPE_WRITE ;

 int GATT_AUTH_REQ_NONE ;



 scalar_t__ GATT_SEC_ENCRYPT ;
 scalar_t__ GATT_SEC_ENCRYPT_MITM ;
 scalar_t__ GATT_SEC_ENCRYPT_NO_MITM ;
 scalar_t__ GATT_SEC_ENC_PENDING ;
 scalar_t__ GATT_SEC_OK ;
 scalar_t__ GATT_SEC_SIGN_DATA ;
 scalar_t__ GATT_WRITE_NO_RSP ;
 int TRUE ;
 int btm_ble_get_enc_key_type (int ,int*) ;
 int btm_ble_link_sec_check (int ,int,scalar_t__*) ;

tGATT_SEC_ACTION gatt_determine_sec_act(tGATT_CLCB *p_clcb )
{
    tGATT_SEC_ACTION act = GATT_SEC_OK;
    UINT8 sec_flag;
    tGATT_TCB *p_tcb = p_clcb->p_tcb;
    tGATT_AUTH_REQ auth_req = p_clcb->auth_req;
    BOOLEAN is_link_encrypted = FALSE;
    BOOLEAN is_link_key_known = FALSE;
    BOOLEAN is_key_mitm = FALSE;

    UINT8 key_type;
    tBTM_BLE_SEC_REQ_ACT sec_act = BTM_LE_SEC_NONE;

    if (auth_req == GATT_AUTH_REQ_NONE ) {
        return act;
    }

    BTM_GetSecurityFlagsByTransport(p_tcb->peer_bda, &sec_flag, p_clcb->p_tcb->transport);

    btm_ble_link_sec_check(p_tcb->peer_bda, auth_req, &sec_act);


    if (

    sec_act == BTM_BLE_SEC_REQ_ACT_DISCARD &&

            auth_req != GATT_AUTH_REQ_NONE) {
        return GATT_SEC_ENC_PENDING;
    }

    if (sec_flag & (BTM_SEC_FLAG_ENCRYPTED | BTM_SEC_FLAG_LKEY_KNOWN)) {
        if (sec_flag & BTM_SEC_FLAG_ENCRYPTED) {
            is_link_encrypted = TRUE;
        }

        is_link_key_known = TRUE;

        if (sec_flag & BTM_SEC_FLAG_LKEY_AUTHED) {
            is_key_mitm = TRUE;
        }
    }


    switch (auth_req) {
    case 131:
    case 129:
        if (!is_key_mitm) {
            act = GATT_SEC_ENCRYPT_MITM;
        }
        break;

    case 130:
    case 128:
        if (!is_link_key_known) {
            act = GATT_SEC_ENCRYPT_NO_MITM;
        }
        break;
    default:
        break;
    }


    if (act == GATT_SEC_OK) {
        if (p_tcb->transport == BT_TRANSPORT_LE &&
                (p_clcb->operation == GATTC_OPTYPE_WRITE) &&
                (p_clcb->op_subtype == GATT_WRITE_NO_RSP)) {


            if (!is_link_encrypted) {

                btm_ble_get_enc_key_type(p_tcb->peer_bda, &key_type);

                if (

                    (key_type & BTM_LE_KEY_LCSRK) &&

                        ((auth_req == 128) ||
                         (auth_req == 129))) {
                    act = GATT_SEC_SIGN_DATA;
                } else {
                    act = GATT_SEC_ENCRYPT;
                }
            }
        } else {
            if (!is_link_encrypted) {
                act = GATT_SEC_ENCRYPT;
            }
        }

    }

    return act ;

}
