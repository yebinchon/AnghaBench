
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ key_size; } ;
struct TYPE_7__ {int pseudo_addr; TYPE_1__ keys; } ;
struct TYPE_8__ {scalar_t__ sec_state; scalar_t__ enc_key_size; TYPE_2__ ble; scalar_t__ role_master; scalar_t__ p_callback; scalar_t__ sec_flags; } ;
typedef TYPE_3__ tBTM_SEC_DEV_REC ;
typedef scalar_t__ UINT8 ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BTM_ERR_PROCESSING ;
 scalar_t__ BTM_SEC_STATE_ENCRYPTING ;
 scalar_t__ BTM_SEC_STATE_IDLE ;
 int BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*,scalar_t__) ;
 int BTM_TRACE_WARNING (char*,scalar_t__) ;
 int TRUE ;
 TYPE_3__* btm_find_dev (int ) ;
 int btm_sec_dev_rec_cback_event (TYPE_3__*,int ,int ) ;
 int gatt_notify_enc_cmpl (int ) ;
 int smp_link_encrypted (int ,scalar_t__) ;

void btm_ble_link_encrypted(BD_ADDR bd_addr, UINT8 encr_enable)
{
    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev (bd_addr);
    BOOLEAN enc_cback;

    if (!p_dev_rec) {
        BTM_TRACE_WARNING ("btm_ble_link_encrypted (No Device Found!) encr_enable=%d", encr_enable);
        return;
    }

    BTM_TRACE_DEBUG ("btm_ble_link_encrypted encr_enable=%d", encr_enable);

    enc_cback = (p_dev_rec->sec_state == BTM_SEC_STATE_ENCRYPTING);

    smp_link_encrypted(bd_addr, encr_enable);

    BTM_TRACE_DEBUG(" p_dev_rec->sec_flags=0x%x", p_dev_rec->sec_flags);

    if (encr_enable && p_dev_rec->enc_key_size == 0) {
        p_dev_rec->enc_key_size = p_dev_rec->ble.keys.key_size;
    }

    p_dev_rec->sec_state = BTM_SEC_STATE_IDLE;
    if (p_dev_rec->p_callback && enc_cback) {
        if (encr_enable) {
            btm_sec_dev_rec_cback_event(p_dev_rec, BTM_SUCCESS, TRUE);
        } else if (p_dev_rec->role_master) {
            btm_sec_dev_rec_cback_event(p_dev_rec, BTM_ERR_PROCESSING, TRUE);
        }

    }

    gatt_notify_enc_cmpl(p_dev_rec->ble.pseudo_addr);
}
