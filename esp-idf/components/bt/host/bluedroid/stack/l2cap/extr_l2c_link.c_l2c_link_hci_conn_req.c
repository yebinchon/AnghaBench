
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ link_state; void* link_role; int timer_entry; scalar_t__ in_use; } ;
typedef TYPE_1__ tL2C_LCB ;
struct TYPE_7__ {TYPE_1__* lcb_pool; } ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 int BTU_TTYPE_L2CAP_LINK ;
 int BT_TRANSPORT_BR_EDR ;
 scalar_t__ FALSE ;
 int HCI_ERR_CONNECTION_EXISTS ;
 int HCI_ERR_HOST_REJECT_DEVICE ;
 int HCI_ERR_HOST_REJECT_RESOURCES ;
 void* HCI_ROLE_MASTER ;
 void* HCI_ROLE_SLAVE ;
 int L2CAP_LINK_CONNECT_TOUT ;
 int L2CAP_TRACE_ERROR (char*,...) ;
 scalar_t__ LST_CONNECTING ;
 scalar_t__ LST_CONNECT_HOLDING ;
 scalar_t__ LST_DISCONNECTING ;
 int MAX_L2CAP_LINKS ;
 scalar_t__ TRUE ;
 int btm_dev_support_switch (int ) ;
 int btsnd_hcic_accept_conn (int ,void*) ;
 int btsnd_hcic_reject_conn (int ,int ) ;
 int btu_start_timer (int *,int ,int ) ;
 TYPE_5__ l2cb ;
 TYPE_1__* l2cu_allocate_lcb (int ,scalar_t__,int ) ;
 TYPE_1__* l2cu_find_lcb_by_bd_addr (int ,int ) ;
 void* l2cu_get_conn_role (TYPE_1__*) ;

BOOLEAN l2c_link_hci_conn_req (BD_ADDR bd_addr)
{
    tL2C_LCB *p_lcb;
    tL2C_LCB *p_lcb_cur;
    int xx;
    BOOLEAN no_links;


    p_lcb = l2cu_find_lcb_by_bd_addr (bd_addr, BT_TRANSPORT_BR_EDR);


    if (!p_lcb) {
        p_lcb = l2cu_allocate_lcb (bd_addr, FALSE, BT_TRANSPORT_BR_EDR);
        if (!p_lcb) {
            btsnd_hcic_reject_conn (bd_addr, HCI_ERR_HOST_REJECT_RESOURCES);
            L2CAP_TRACE_ERROR ("L2CAP failed to allocate LCB");
            return FALSE;
        }

        no_links = TRUE;


        for (xx = 0, p_lcb_cur = &l2cb.lcb_pool[0]; xx < MAX_L2CAP_LINKS; xx++, p_lcb_cur++) {
            if (p_lcb_cur == p_lcb) {
                continue;
            }

            if (p_lcb_cur->in_use) {
                no_links = FALSE;
                p_lcb->link_role = HCI_ROLE_MASTER;
                break;
            }
        }

        if (no_links) {
            if (!btm_dev_support_switch (bd_addr)) {
                p_lcb->link_role = HCI_ROLE_SLAVE;
            } else {
                p_lcb->link_role = l2cu_get_conn_role(p_lcb);
            }
        }




        btsnd_hcic_accept_conn (bd_addr, p_lcb->link_role);

        p_lcb->link_state = LST_CONNECTING;


        btu_start_timer (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, L2CAP_LINK_CONNECT_TOUT);
        return (TRUE);
    }


    if ((p_lcb->link_state == LST_CONNECTING) || (p_lcb->link_state == LST_CONNECT_HOLDING)) {


        if (!btm_dev_support_switch (bd_addr)) {
            p_lcb->link_role = HCI_ROLE_SLAVE;
        } else {
            p_lcb->link_role = l2cu_get_conn_role(p_lcb);
        }


        btsnd_hcic_accept_conn (bd_addr, p_lcb->link_role);

        p_lcb->link_state = LST_CONNECTING;
        return (TRUE);
    } else if (p_lcb->link_state == LST_DISCONNECTING) {


        btsnd_hcic_reject_conn (bd_addr, HCI_ERR_HOST_REJECT_DEVICE);
    } else {
        L2CAP_TRACE_ERROR("L2CAP got conn_req while connected (state:%d). Reject it\n",
                          p_lcb->link_state);


        btsnd_hcic_reject_conn (bd_addr, HCI_ERR_CONNECTION_EXISTS);
    }
    return (FALSE);
}
