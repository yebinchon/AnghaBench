
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ link_state; scalar_t__ in_use; int acl_priority; scalar_t__ link_role; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef scalar_t__ UINT8 ;
struct TYPE_6__ {TYPE_1__* lcb_pool; } ;
typedef scalar_t__ BD_ADDR ;


 int BT_TRANSPORT_BR_EDR ;
 scalar_t__ HCI_SUCCESS ;
 scalar_t__ LST_CONNECTING_WAIT_SWITCH ;
 int MAX_L2CAP_LINKS ;
 int TRUE ;
 TYPE_4__ l2cb ;
 int l2cu_create_conn_after_switch (TYPE_1__*) ;
 TYPE_1__* l2cu_find_lcb_by_bd_addr (scalar_t__,int ) ;
 int l2cu_set_acl_priority (scalar_t__,int ,int ) ;

void l2c_link_role_changed (BD_ADDR bd_addr, UINT8 new_role, UINT8 hci_status)
{
    tL2C_LCB *p_lcb;
    int xx;


    if (bd_addr) {

        p_lcb = l2cu_find_lcb_by_bd_addr (bd_addr, BT_TRANSPORT_BR_EDR);
        if (p_lcb) {
            p_lcb->link_role = new_role;


            if (hci_status == HCI_SUCCESS) {
                l2cu_set_acl_priority(bd_addr, p_lcb->acl_priority, TRUE);
            }
        }
    }


    for (xx = 0, p_lcb = &l2cb.lcb_pool[0]; xx < MAX_L2CAP_LINKS; xx++, p_lcb++) {
        if ((p_lcb->in_use) && (p_lcb->link_state == LST_CONNECTING_WAIT_SWITCH)) {
            l2cu_create_conn_after_switch (p_lcb);
        }
    }
}
