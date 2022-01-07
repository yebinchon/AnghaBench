
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ rs_disc_pending; int hci_handle; } ;
typedef TYPE_3__ tBTM_SEC_DEV_REC ;
struct TYPE_11__ {size_t hci_status; int new_role; int p_bda; int event; } ;
typedef TYPE_4__ tBTM_BL_ROLE_CHG_DATA ;
typedef int tBTM_BL_EVENT_DATA ;
struct TYPE_12__ {scalar_t__ switch_role_state; int remote_addr; void* encrypt_state; int link_role; } ;
typedef TYPE_5__ tACL_CONN ;
typedef size_t UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_8__ {size_t hci_status; int remote_bd_addr; int role; } ;
struct TYPE_9__ {TYPE_1__ switch_role_ref_data; } ;
struct TYPE_13__ {int bl_evt_mask; int (* p_bl_changed_cb ) (int *) ;TYPE_2__ devcb; TYPE_5__* acl_db; } ;


 void* BTM_ACL_ENCRYPT_STATE_IDLE ;
 void* BTM_ACL_ENCRYPT_STATE_TEMP_FUNC ;
 scalar_t__ BTM_ACL_SWKEY_STATE_ENCRYPTION_OFF ;
 scalar_t__ BTM_ACL_SWKEY_STATE_ENCRYPTION_ON ;
 void* BTM_ACL_SWKEY_STATE_IDLE ;
 scalar_t__ BTM_ACL_SWKEY_STATE_SWITCHING ;
 int BTM_BL_ROLE_CHG_EVT ;
 int BTM_BL_ROLE_CHG_MASK ;
 scalar_t__ BTM_SEC_DISC_PENDING ;
 scalar_t__ BTM_SEC_RS_NOT_PENDING ;
 scalar_t__ BTM_SEC_RS_PENDING ;
 int BTM_TRACE_DEBUG (char*,int ,size_t,size_t) ;
 int BTM_TRACE_ERROR (char*,int ,scalar_t__) ;
 int BTM_TRACE_WARNING (char*) ;
 int HCI_ERR_PEER_USER ;
 size_t MAX_L2CAP_LINKS ;
 int btm_acl_report_role_change (size_t,int ) ;
 TYPE_7__ btm_cb ;
 TYPE_3__* btm_find_dev (int ) ;
 size_t btm_handle_to_acl_index (int ) ;
 int btsnd_hcic_disconnect (int ,int ) ;
 int btsnd_hcic_switch_role (int ,size_t) ;
 int stub1 (int *) ;

void btm_acl_encrypt_change (UINT16 handle, UINT8 status, UINT8 encr_enable)
{
    tACL_CONN *p;
    UINT8 xx;
    tBTM_SEC_DEV_REC *p_dev_rec;
    tBTM_BL_ROLE_CHG_DATA evt;

    BTM_TRACE_DEBUG ("btm_acl_encrypt_change handle=%d status=%d encr_enabl=%d\n",
                     handle, status, encr_enable);
    xx = btm_handle_to_acl_index(handle);

    if (xx < MAX_L2CAP_LINKS) {
        p = &btm_cb.acl_db[xx];
    } else {
        return;
    }


    if (p->switch_role_state == BTM_ACL_SWKEY_STATE_ENCRYPTION_OFF) {

        if (encr_enable) {
            p->switch_role_state = BTM_ACL_SWKEY_STATE_IDLE;
            p->encrypt_state = BTM_ACL_ENCRYPT_STATE_IDLE;
        } else {
            p->switch_role_state = BTM_ACL_SWKEY_STATE_SWITCHING;
            p->encrypt_state = BTM_ACL_ENCRYPT_STATE_TEMP_FUNC;
        }

        if (!btsnd_hcic_switch_role (p->remote_addr, (UINT8)!p->link_role)) {
            p->switch_role_state = BTM_ACL_SWKEY_STATE_IDLE;
            p->encrypt_state = BTM_ACL_ENCRYPT_STATE_IDLE;
            btm_acl_report_role_change(btm_cb.devcb.switch_role_ref_data.hci_status, p->remote_addr);
        }

        else {
            if ((p_dev_rec = btm_find_dev (p->remote_addr)) != ((void*)0)) {
                p_dev_rec->rs_disc_pending = BTM_SEC_RS_PENDING;
            }
        }


    }

    else if (p->switch_role_state == BTM_ACL_SWKEY_STATE_ENCRYPTION_ON) {
        p->switch_role_state = BTM_ACL_SWKEY_STATE_IDLE;
        p->encrypt_state = BTM_ACL_ENCRYPT_STATE_IDLE;
        btm_acl_report_role_change(btm_cb.devcb.switch_role_ref_data.hci_status, p->remote_addr);


        if (btm_cb.p_bl_changed_cb && (btm_cb.bl_evt_mask & BTM_BL_ROLE_CHG_MASK)) {
            evt.event = BTM_BL_ROLE_CHG_EVT;
            evt.new_role = btm_cb.devcb.switch_role_ref_data.role;
            evt.p_bda = btm_cb.devcb.switch_role_ref_data.remote_bd_addr;
            evt.hci_status = btm_cb.devcb.switch_role_ref_data.hci_status;
            (*btm_cb.p_bl_changed_cb)((tBTM_BL_EVENT_DATA *)&evt);

            BTM_TRACE_DEBUG("Role Switch Event: new_role 0x%02x, HCI Status 0x%02x, rs_st:%d\n",
                            evt.new_role, evt.hci_status, p->switch_role_state);
        }



        if ((p_dev_rec = btm_find_dev (p->remote_addr)) != ((void*)0)) {
            if (p_dev_rec->rs_disc_pending == BTM_SEC_DISC_PENDING) {
                BTM_TRACE_WARNING("btm_acl_encrypt_change -> Issuing delayed HCI_Disconnect!!!\n");
                btsnd_hcic_disconnect(p_dev_rec->hci_handle, HCI_ERR_PEER_USER);
            }
            BTM_TRACE_ERROR("btm_acl_encrypt_change: tBTM_SEC_DEV:0x%x rs_disc_pending=%d\n",
                            (UINT32)p_dev_rec, p_dev_rec->rs_disc_pending);
            p_dev_rec->rs_disc_pending = BTM_SEC_RS_NOT_PENDING;
        }

    }
}
