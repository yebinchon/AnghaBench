
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sec_flags; int rs_disc_pending; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
struct TYPE_7__ {scalar_t__ switch_role_state; int remote_addr; int link_role; int encrypt_state; int hci_handle; } ;
typedef TYPE_2__ tACL_CONN ;
typedef int UINT8 ;
typedef int BOOLEAN ;


 int BTM_ACL_ENCRYPT_STATE_ENCRYPT_OFF ;
 scalar_t__ BTM_ACL_SWKEY_STATE_ENCRYPTION_OFF ;
 scalar_t__ BTM_ACL_SWKEY_STATE_IDLE ;
 scalar_t__ BTM_ACL_SWKEY_STATE_IN_PROGRESS ;
 scalar_t__ BTM_ACL_SWKEY_STATE_MODE_CHANGE ;
 int BTM_EPR_AVAILABLE (TYPE_2__*) ;
 int BTM_SEC_ENCRYPTED ;
 int BTM_SEC_RS_PENDING ;
 int BTM_TRACE_DEBUG (char*) ;
 int FALSE ;
 int TRUE ;
 int btm_acl_report_role_change (int ,int ) ;
 scalar_t__ btsnd_hcic_set_conn_encrypt (int ,int ) ;
 int btsnd_hcic_switch_role (int ,int ) ;

void btm_cont_rswitch (tACL_CONN *p, tBTM_SEC_DEV_REC *p_dev_rec,
                       UINT8 hci_status)
{
    BOOLEAN sw_ok = TRUE;
    BTM_TRACE_DEBUG ("btm_cont_rswitch\n");


    if (p->switch_role_state == BTM_ACL_SWKEY_STATE_MODE_CHANGE) {


        if (p_dev_rec != ((void*)0) && ((p_dev_rec->sec_flags & BTM_SEC_ENCRYPTED) != 0)
                && !BTM_EPR_AVAILABLE(p)) {
            if (btsnd_hcic_set_conn_encrypt (p->hci_handle, FALSE)) {
                p->encrypt_state = BTM_ACL_ENCRYPT_STATE_ENCRYPT_OFF;
                if (p->switch_role_state == BTM_ACL_SWKEY_STATE_MODE_CHANGE) {
                    p->switch_role_state = BTM_ACL_SWKEY_STATE_ENCRYPTION_OFF;
                }
            } else {

                if (p->switch_role_state == BTM_ACL_SWKEY_STATE_MODE_CHANGE) {
                    sw_ok = FALSE;
                }
            }
        } else

        {
            if (p->switch_role_state == BTM_ACL_SWKEY_STATE_MODE_CHANGE) {
                p->switch_role_state = BTM_ACL_SWKEY_STATE_IN_PROGRESS;

                if (p_dev_rec) {
                    p_dev_rec->rs_disc_pending = BTM_SEC_RS_PENDING;
                }

                sw_ok = btsnd_hcic_switch_role (p->remote_addr, (UINT8)!p->link_role);
            }
        }

        if (!sw_ok) {
            p->switch_role_state = BTM_ACL_SWKEY_STATE_IDLE;
            btm_acl_report_role_change(hci_status, p->remote_addr);
        }
    }
}
