
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


struct TYPE_16__ {TYPE_4__* p_first_ccb; } ;
struct TYPE_17__ {scalar_t__ link_state; TYPE_1__ ccb_queue; scalar_t__ disc_reason; int handle; int timer_entry; scalar_t__ p_echo_rsp_cb; scalar_t__ is_bonding; int link_role; } ;
typedef TYPE_2__ tL2C_LCB ;
struct TYPE_18__ {scalar_t__ status; int bd_addr; } ;
typedef TYPE_3__ tL2C_CONN_INFO ;
struct TYPE_19__ {struct TYPE_19__* p_next_ccb; } ;
typedef TYPE_4__ tL2C_CCB ;
struct TYPE_20__ {int * sec_bd_name; int * dev_class; } ;
typedef TYPE_5__ tBTM_SEC_DEV_REC ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_15__ {int btm_def_link_super_tout; } ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_BLI_PAGE_DONE_EVT ;
 int BTM_SetLinkSuperTout (int ,int ) ;
 int BTU_TTYPE_L2CAP_LINK ;
 int BT_TRANSPORT_BR_EDR ;
 int FALSE ;
 scalar_t__ HCI_ERR_CONNECTION_EXISTS ;
 scalar_t__ HCI_ERR_MAX_NUM_OF_CONNECTIONS ;
 int HCI_INVALID_HANDLE ;
 scalar_t__ HCI_SUCCESS ;
 int L2CAP_ECHO_RSP_TOUT ;
 int L2CAP_EXTENDED_FEATURES_INFO_TYPE ;
 int L2CAP_LINK_STARTUP_TOUT ;
 int L2CAP_TRACE_ERROR (char*,scalar_t__,scalar_t__) ;
 int L2CAP_TRACE_WARNING (char*) ;
 int L2CEVT_LP_CONNECT_CFM ;
 int L2CEVT_LP_CONNECT_CFM_NEG ;
 scalar_t__ LST_CONNECTED ;
 scalar_t__ LST_CONNECTING ;
 scalar_t__ LST_CONNECT_HOLDING ;
 scalar_t__ LST_DISCONNECTING ;
 int TRUE ;
 int btm_acl_created (int ,int *,int *,int ,int ,int ) ;
 int btm_acl_update_busy_level (int ) ;
 TYPE_14__ btm_cb ;
 TYPE_5__* btm_find_dev (int ) ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;
 int l2c_csm_execute (TYPE_4__*,int ,TYPE_3__*) ;
 int l2c_link_hci_disc_comp (int ,scalar_t__) ;
 int l2c_process_held_packets (int ) ;
 int l2cu_create_conn (TYPE_2__*,int ) ;
 TYPE_2__* l2cu_find_lcb_by_bd_addr (int ,int ) ;
 scalar_t__ l2cu_lcb_disconnecting () ;
 int l2cu_release_lcb (TYPE_2__*) ;
 int l2cu_send_peer_echo_req (TYPE_2__*,int *,int ) ;
 int l2cu_send_peer_info_req (TYPE_2__*,int ) ;
 scalar_t__ l2cu_start_post_bond_timer (int ) ;
 int memcpy (int ,int ,int ) ;

BOOLEAN l2c_link_hci_conn_comp (UINT8 status, UINT16 handle, BD_ADDR p_bda)
{
    tL2C_CONN_INFO ci;
    tL2C_LCB *p_lcb;

    tL2C_CCB *p_ccb;

    tBTM_SEC_DEV_REC *p_dev_info = ((void*)0);

    btm_acl_update_busy_level (BTM_BLI_PAGE_DONE_EVT);


    ci.status = status;
    memcpy (ci.bd_addr, p_bda, BD_ADDR_LEN);


    p_lcb = l2cu_find_lcb_by_bd_addr (ci.bd_addr, BT_TRANSPORT_BR_EDR);


    if (!p_lcb) {
        L2CAP_TRACE_WARNING ("L2CAP got conn_comp for unknown BD_ADDR\n");
        return (FALSE);
    }

    if (p_lcb->link_state != LST_CONNECTING) {
        L2CAP_TRACE_ERROR ("L2CAP got conn_comp in bad state: %d  status: 0x%d\n", p_lcb->link_state, status);

        if (status != HCI_SUCCESS) {
            l2c_link_hci_disc_comp (p_lcb->handle, status);
        }

        return (FALSE);
    }


    p_lcb->handle = handle;

    if (ci.status == HCI_SUCCESS) {

        p_lcb->link_state = LST_CONNECTED;



        l2cu_send_peer_info_req (p_lcb, L2CAP_EXTENDED_FEATURES_INFO_TYPE);


        if ((p_dev_info = btm_find_dev (p_bda)) != ((void*)0)) {
            btm_acl_created (ci.bd_addr, p_dev_info->dev_class,
                             p_dev_info->sec_bd_name, handle,
                             p_lcb->link_role, BT_TRANSPORT_BR_EDR);
        } else {
            btm_acl_created (ci.bd_addr, ((void*)0), ((void*)0), handle, p_lcb->link_role, BT_TRANSPORT_BR_EDR);
        }

        BTM_SetLinkSuperTout (ci.bd_addr, btm_cb.btm_def_link_super_tout);


        if (p_lcb->is_bonding) {
            if (l2cu_start_post_bond_timer(handle)) {
                return (TRUE);
            }
        }


        l2c_process_held_packets(FALSE);

        btu_stop_timer (&p_lcb->timer_entry);


        for (p_ccb = p_lcb->ccb_queue.p_first_ccb; p_ccb; p_ccb = p_ccb->p_next_ccb) {
            l2c_csm_execute (p_ccb, L2CEVT_LP_CONNECT_CFM, &ci);
        }

        if (p_lcb->p_echo_rsp_cb) {
            l2cu_send_peer_echo_req (p_lcb, ((void*)0), 0);
            btu_start_timer (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, L2CAP_ECHO_RSP_TOUT);
        } else if (!p_lcb->ccb_queue.p_first_ccb) {
            btu_start_timer (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, L2CAP_LINK_STARTUP_TOUT);
        }
    }


    else if ((ci.status == HCI_ERR_MAX_NUM_OF_CONNECTIONS) && l2cu_lcb_disconnecting()) {
        p_lcb->link_state = LST_CONNECT_HOLDING;
        p_lcb->handle = HCI_INVALID_HANDLE;
    } else {

        p_lcb->link_state = LST_DISCONNECTING;



        for (p_ccb = p_lcb->ccb_queue.p_first_ccb; p_ccb; ) {
            tL2C_CCB *pn = p_ccb->p_next_ccb;

            l2c_csm_execute (p_ccb, L2CEVT_LP_CONNECT_CFM_NEG, &ci);

            p_ccb = pn;
        }

        p_lcb->disc_reason = status;

        if (p_lcb->ccb_queue.p_first_ccb == ((void*)0)) {
            l2cu_release_lcb (p_lcb);
        } else {
            if (ci.status == HCI_ERR_CONNECTION_EXISTS) {

                p_lcb->link_state = LST_CONNECTING;
            } else {
                l2cu_create_conn(p_lcb, BT_TRANSPORT_BR_EDR);
            }
        }
    }
    return (TRUE);
}
