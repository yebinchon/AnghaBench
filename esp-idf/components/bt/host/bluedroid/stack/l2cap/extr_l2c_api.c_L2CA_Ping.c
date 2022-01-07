
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ link_state; int timer_entry; int * p_echo_rsp_cb; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int tL2CA_ECHO_RSP_CB ;
typedef scalar_t__ BOOLEAN ;
typedef int * BD_ADDR ;


 int BTM_IsDeviceUp () ;
 int BTU_TTYPE_L2CAP_LINK ;
 int BT_TRANSPORT_BR_EDR ;
 scalar_t__ FALSE ;
 int L2CAP_ADJ_BRCM_ID ;
 int L2CAP_ECHO_RSP_TOUT ;
 int L2CAP_TRACE_API (char*,int ,int ,int ,int ,int ,int ) ;
 int L2CAP_TRACE_WARNING (char*) ;
 scalar_t__ LST_CONNECTED ;
 scalar_t__ LST_DISCONNECTING ;
 scalar_t__ TRUE ;
 int btu_start_timer (int *,int ,int ) ;
 int l2cu_adj_id (TYPE_1__*,int ) ;
 TYPE_1__* l2cu_allocate_lcb (int *,scalar_t__,int ) ;
 scalar_t__ l2cu_create_conn (TYPE_1__*,int ) ;
 TYPE_1__* l2cu_find_lcb_by_bd_addr (int *,int ) ;
 int l2cu_send_peer_echo_req (TYPE_1__*,int *,int ) ;

BOOLEAN L2CA_Ping (BD_ADDR p_bd_addr, tL2CA_ECHO_RSP_CB *p_callback)
{
    tL2C_LCB *p_lcb;

    L2CAP_TRACE_API ("L2CA_Ping()  BDA: %02x-%02x-%02x-%02x-%02x-%02x",
                     p_bd_addr[0], p_bd_addr[1], p_bd_addr[2], p_bd_addr[3], p_bd_addr[4], p_bd_addr[5]);


    if (!BTM_IsDeviceUp()) {
        return (FALSE);
    }


    if ((p_lcb = l2cu_find_lcb_by_bd_addr (p_bd_addr, BT_TRANSPORT_BR_EDR)) == ((void*)0)) {

        if ((p_lcb = l2cu_allocate_lcb (p_bd_addr, FALSE, BT_TRANSPORT_BR_EDR)) == ((void*)0)) {
            L2CAP_TRACE_WARNING ("L2CAP - no LCB for L2CA_ping");
            return (FALSE);
        }
        if (l2cu_create_conn(p_lcb, BT_TRANSPORT_BR_EDR) == FALSE) {
            return (FALSE);
        }

        p_lcb->p_echo_rsp_cb = p_callback;

        return (TRUE);
    }


    if (p_lcb->p_echo_rsp_cb != ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - rejected second L2CA_ping");
        return (FALSE);
    }


    if (p_lcb->link_state == LST_DISCONNECTING) {
        L2CAP_TRACE_WARNING ("L2CAP - L2CA_ping rejected - link disconnecting");
        return (FALSE);
    }


    p_lcb->p_echo_rsp_cb = p_callback;

    if (p_lcb->link_state == LST_CONNECTED) {
        l2cu_adj_id(p_lcb, L2CAP_ADJ_BRCM_ID);
        l2cu_send_peer_echo_req (p_lcb, ((void*)0), 0);
        btu_start_timer (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, L2CAP_ECHO_RSP_TOUT);
    }

    return (TRUE);
}
