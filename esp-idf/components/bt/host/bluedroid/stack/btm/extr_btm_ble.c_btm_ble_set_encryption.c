
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_4__ {int key_type; int skip_update_conn_param; } ;
struct TYPE_5__ {int sec_state; TYPE_1__ ble; int security_required; int role_master; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
typedef int tBTM_LE_AUTH_REQ ;
typedef int tBTM_BLE_SEC_REQ_ACT ;
typedef int tBTM_BLE_SEC_ACT ;
typedef int UINT8 ;
typedef int BD_ADDR ;





 int BTM_BLE_SEC_REQ_ACT_ENCRYPT ;
 int BTM_CMD_STARTED ;
 int BTM_LE_KEY_PENC ;
 int BTM_NO_RESOURCES ;
 int BTM_ROLE_MASTER ;
 int BTM_ROLE_SLAVE ;
 int BTM_SEC_IN_MITM ;
 int BTM_SEC_STATE_AUTHENTICATING ;
 int BTM_TRACE_DEBUG (char*,int,int ) ;
 int BTM_TRACE_WARNING (char*,int) ;
 int BTM_WRONG_MODE ;
 int FALSE ;
 int SMP_AUTH_GEN_BOND ;
 int SMP_AUTH_YN_BIT ;
 int SMP_Pair (int ) ;
 int SMP_STARTED ;
 int btm_ble_link_sec_check (int ,int,int *) ;
 int btm_ble_start_encrypt (int ,int ,int *) ;
 TYPE_2__* btm_find_dev (int ) ;

tBTM_STATUS btm_ble_set_encryption (BD_ADDR bd_addr, void *p_ref_data, UINT8 link_role)
{
    tBTM_STATUS cmd = BTM_NO_RESOURCES;

    tBTM_BLE_SEC_ACT sec_act = *(tBTM_BLE_SEC_ACT *)p_ref_data ;
    tBTM_SEC_DEV_REC *p_rec = btm_find_dev (bd_addr);
    tBTM_BLE_SEC_REQ_ACT sec_req_act;
    tBTM_LE_AUTH_REQ auth_req;

    if (p_rec == ((void*)0)) {
        BTM_TRACE_WARNING ("btm_ble_set_encryption (NULL device record!! sec_act=0x%x", sec_act);
        return (BTM_WRONG_MODE);
    }

    BTM_TRACE_DEBUG ("btm_ble_set_encryption sec_act=0x%x role_master=%d", sec_act, p_rec->role_master);

    if (sec_act == 129) {
        p_rec->security_required |= BTM_SEC_IN_MITM;
    }

    switch (sec_act) {
    case 130:
        if (link_role == BTM_ROLE_MASTER && (p_rec->ble.key_type & BTM_LE_KEY_PENC)) {

            cmd = btm_ble_start_encrypt(bd_addr, FALSE, ((void*)0));
            break;
        }


    case 128:
    case 129:
        if ((link_role == BTM_ROLE_MASTER) && (sec_act != 130)) {
            auth_req = (sec_act == 128)
                       ? SMP_AUTH_GEN_BOND : (SMP_AUTH_GEN_BOND | SMP_AUTH_YN_BIT);
            btm_ble_link_sec_check (bd_addr, auth_req, &sec_req_act);

            if (sec_req_act == BTM_BLE_SEC_REQ_ACT_ENCRYPT) {
                cmd = btm_ble_start_encrypt(bd_addr, FALSE, ((void*)0));
                break;
            }
        }


        if(link_role == BTM_ROLE_SLAVE && (p_rec->ble.key_type & BTM_LE_KEY_PENC)) {
            p_rec->ble.skip_update_conn_param = 1;
        } else {
            p_rec->ble.skip_update_conn_param = 0;
        }

        if (SMP_Pair(bd_addr) == SMP_STARTED) {
            cmd = BTM_CMD_STARTED;
            p_rec->sec_state = BTM_SEC_STATE_AUTHENTICATING;
        }
        break;

    default:
        cmd = BTM_WRONG_MODE;
        break;
    }

    return cmd;
}
