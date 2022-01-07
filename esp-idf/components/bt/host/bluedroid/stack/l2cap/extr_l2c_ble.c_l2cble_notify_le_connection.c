
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ link_state; } ;
typedef TYPE_2__ tL2C_LCB ;
struct TYPE_12__ {int state; int adv_mode; } ;
typedef TYPE_3__ tBTM_BLE_INQ_CB ;
struct TYPE_13__ {scalar_t__ link_role; } ;
typedef TYPE_4__ tACL_CONN ;
struct TYPE_10__ {TYPE_3__ inq_var; } ;
struct TYPE_14__ {TYPE_1__ ble_ctr_cb; } ;
typedef int BD_ADDR ;


 int BTM_BLE_ADV_DISABLE ;
 int BTM_BLE_STOP_ADV ;
 int BT_TRANSPORT_LE ;
 scalar_t__ HCI_ROLE_SLAVE ;
 scalar_t__ LST_CONNECTED ;
 TYPE_4__* btm_bda_to_acl (int ,int ) ;
 TYPE_8__ btm_cb ;
 int btm_establish_continue (TYPE_4__*) ;
 TYPE_2__* l2cu_find_lcb_by_bd_addr (int ,int ) ;
 int l2cu_process_fixed_chnl_resp (TYPE_2__*) ;

void l2cble_notify_le_connection (BD_ADDR bda)
{
    tL2C_LCB *p_lcb = l2cu_find_lcb_by_bd_addr (bda, BT_TRANSPORT_LE);
    tACL_CONN *p_acl = btm_bda_to_acl(bda, BT_TRANSPORT_LE) ;

    if (p_lcb != ((void*)0) && p_acl != ((void*)0) && p_lcb->link_state != LST_CONNECTED) {

        if(p_acl->link_role == HCI_ROLE_SLAVE) {

            tBTM_BLE_INQ_CB *p_cb = &btm_cb.ble_ctr_cb.inq_var;
            if(p_cb) {
                p_cb->adv_mode = BTM_BLE_ADV_DISABLE;
                p_cb->state = BTM_BLE_STOP_ADV;
            }
        }

        btm_establish_continue(p_acl);

        p_lcb->link_state = LST_CONNECTED;
        l2cu_process_fixed_chnl_resp (p_lcb);
    }
}
