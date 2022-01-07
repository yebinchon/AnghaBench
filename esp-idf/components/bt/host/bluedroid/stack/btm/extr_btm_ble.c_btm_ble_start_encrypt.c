
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_13__ {int member_0; } ;
struct TYPE_9__ {int pltk; int ediv; TYPE_5__ rand; } ;
struct TYPE_10__ {int key_type; TYPE_1__ keys; } ;
struct TYPE_11__ {scalar_t__ sec_state; TYPE_2__ ble; int ble_hci_handle; } ;
typedef TYPE_3__ tBTM_SEC_DEV_REC ;
struct TYPE_12__ {int enc_handle; } ;
typedef TYPE_4__ tBTM_CB ;
typedef TYPE_5__ BT_OCTET8 ;
typedef int BT_OCTET16 ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 scalar_t__ BTM_BUSY ;
 scalar_t__ BTM_CMD_STARTED ;
 int BTM_LE_KEY_PENC ;
 scalar_t__ BTM_NO_RESOURCES ;
 scalar_t__ BTM_SEC_STATE_ENCRYPTING ;
 scalar_t__ BTM_SEC_STATE_IDLE ;
 int BTM_TRACE_DEBUG (char*) ;
 int BTM_TRACE_ERROR (char*) ;
 int BTM_TRACE_WARNING (char*) ;
 scalar_t__ BTM_WRONG_MODE ;
 TYPE_4__ btm_cb ;
 TYPE_3__* btm_find_dev (int ) ;
 scalar_t__ btsnd_hcic_ble_start_enc (int ,TYPE_5__,int ,int ) ;

tBTM_STATUS btm_ble_start_encrypt(BD_ADDR bda, BOOLEAN use_stk, BT_OCTET16 stk)
{

    tBTM_CB *p_cb = &btm_cb;
    tBTM_SEC_DEV_REC *p_rec = btm_find_dev (bda);
    BT_OCTET8 dummy_rand = {0};


    tBTM_STATUS rt = BTM_NO_RESOURCES;

    BTM_TRACE_DEBUG ("btm_ble_start_encrypt");

    if (!p_rec ) {
        BTM_TRACE_ERROR("Link is not active, can not encrypt!");
        return BTM_WRONG_MODE;
    }

    if (p_rec->sec_state == BTM_SEC_STATE_ENCRYPTING) {
        BTM_TRACE_WARNING("Link Encryption is active, Busy!");
        return BTM_BUSY;
    }

    p_cb->enc_handle = p_rec->ble_hci_handle;

    if (use_stk) {
        if (btsnd_hcic_ble_start_enc(p_rec->ble_hci_handle, dummy_rand, 0, stk)) {
            rt = BTM_CMD_STARTED;
        }
    } else if (p_rec->ble.key_type & BTM_LE_KEY_PENC) {
        if (btsnd_hcic_ble_start_enc(p_rec->ble_hci_handle, p_rec->ble.keys.rand,
                                     p_rec->ble.keys.ediv, p_rec->ble.keys.pltk)) {
            rt = BTM_CMD_STARTED;
        }
    } else {
        BTM_TRACE_ERROR("No key available to encrypt the link");
    }
    if (rt == BTM_CMD_STARTED) {
        if (p_rec->sec_state == BTM_SEC_STATE_IDLE) {
            p_rec->sec_state = BTM_SEC_STATE_ENCRYPTING;
        }
    }

    return rt;
}
