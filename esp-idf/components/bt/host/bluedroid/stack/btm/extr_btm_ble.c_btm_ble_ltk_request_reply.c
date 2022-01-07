
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lltk; int key_size; } ;
struct TYPE_8__ {int key_type; TYPE_1__ keys; } ;
struct TYPE_9__ {TYPE_2__ ble; int ble_hci_handle; } ;
typedef TYPE_3__ tBTM_SEC_DEV_REC ;
struct TYPE_10__ {int enc_handle; int key_size; } ;
typedef TYPE_4__ tBTM_CB ;
typedef int BT_OCTET16 ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 int BTM_LE_KEY_LENC ;
 int BTM_TRACE_DEBUG (char*,...) ;
 int BTM_TRACE_ERROR (char*) ;
 TYPE_4__ btm_cb ;
 TYPE_3__* btm_find_dev (int ) ;
 int btsnd_hcic_ble_ltk_req_neg_reply (int ) ;
 int btsnd_hcic_ble_ltk_req_reply (int ,int ) ;

void btm_ble_ltk_request_reply(BD_ADDR bda, BOOLEAN use_stk, BT_OCTET16 stk)
{
    tBTM_SEC_DEV_REC *p_rec = btm_find_dev (bda);
    tBTM_CB *p_cb = &btm_cb;

    if (p_rec == ((void*)0)) {
        BTM_TRACE_ERROR("btm_ble_ltk_request_reply received for unknown device");
        return;
    }

    BTM_TRACE_DEBUG ("btm_ble_ltk_request_reply");
    p_cb->enc_handle = p_rec->ble_hci_handle;
    p_cb->key_size = p_rec->ble.keys.key_size;

    BTM_TRACE_DEBUG("key size = %d", p_rec->ble.keys.key_size);
    if (use_stk) {
        btsnd_hcic_ble_ltk_req_reply(btm_cb.enc_handle, stk);
    } else {
        if (p_rec->ble.key_type & BTM_LE_KEY_LENC) {
            btsnd_hcic_ble_ltk_req_reply(btm_cb.enc_handle, p_rec->ble.keys.lltk);
        } else {
            btsnd_hcic_ble_ltk_req_neg_reply(btm_cb.enc_handle);
        }
    }
}
