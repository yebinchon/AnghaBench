
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_15__ {TYPE_4__* p_first_ccb; } ;
struct TYPE_17__ {scalar_t__ disc_reason; scalar_t__ transport; TYPE_4__* p_pending_ccb; TYPE_4__** p_fixed_ccbs; int remote_bd_addr; int link_xmit_data_q; TYPE_1__ ccb_queue; int link_role; int link_state; } ;
typedef TYPE_3__ tL2C_LCB ;
struct TYPE_18__ {struct TYPE_18__* p_next_ccb; } ;
typedef TYPE_4__ tL2C_CCB ;
typedef scalar_t__ tBT_TRANSPORT ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_16__ {int (* pL2CA_FixedConn_Cb ) (scalar_t__,int ,void*,scalar_t__,scalar_t__) ;} ;
struct TYPE_14__ {scalar_t__ acl_disc_reason; } ;
struct TYPE_13__ {TYPE_2__* fixed_reg; void* is_ble_connecting; } ;
typedef int BT_HDR ;
typedef void* BOOLEAN ;


 int BTM_Recovery_Pre_State () ;
 scalar_t__ BT_TRANSPORT_BR_EDR ;
 scalar_t__ BT_TRANSPORT_LE ;
 void* FALSE ;
 scalar_t__ HCI_ERR_HOST_REJECT_SECURITY ;
 scalar_t__ L2CAP_FIRST_FIXED_CHNL ;
 int L2CAP_NUM_FIXED_CHNLS ;
 int L2CAP_TRACE_DEBUG (char*) ;
 int L2CEVT_LP_DISCONNECT_IND ;
 int LST_CONNECT_HOLDING ;
 int LST_DISCONNECTING ;
 void* TRUE ;
 int btm_acl_removed (int ,scalar_t__) ;
 int btm_ble_update_link_topology_mask (int ,void*) ;
 TYPE_12__ btm_cb ;
 int btm_sco_acl_removed (int ) ;
 int l2c_csm_execute (TYPE_4__*,int ,scalar_t__*) ;
 TYPE_10__ l2cb ;
 scalar_t__ l2cu_create_conn (TYPE_3__*,scalar_t__) ;
 TYPE_3__* l2cu_find_lcb_by_handle (int ) ;
 TYPE_3__* l2cu_find_lcb_by_state (int ) ;
 int l2cu_release_ccb (TYPE_4__*) ;
 int l2cu_release_lcb (TYPE_3__*) ;
 int * list_front (int ) ;
 int list_is_empty (int ) ;
 int list_remove (int ,int *) ;
 int osi_free (int *) ;
 int stub1 (scalar_t__,int ,void*,scalar_t__,scalar_t__) ;
 int stub2 (scalar_t__,int ,void*,scalar_t__,scalar_t__) ;

BOOLEAN l2c_link_hci_disc_comp (UINT16 handle, UINT8 reason)
{
    tL2C_LCB *p_lcb;

    tL2C_CCB *p_ccb;

    BOOLEAN status = TRUE;
    BOOLEAN lcb_is_free = TRUE;
    tBT_TRANSPORT transport = BT_TRANSPORT_BR_EDR;


    p_lcb = l2cu_find_lcb_by_handle (handle);

    if (!p_lcb) {

        BTM_Recovery_Pre_State();

        status = FALSE;
    } else {


        if (btm_cb.acl_disc_reason != HCI_ERR_HOST_REJECT_SECURITY) {
            btm_cb.acl_disc_reason = reason;
        }

        p_lcb->disc_reason = btm_cb.acl_disc_reason;


        p_lcb->link_state = LST_DISCONNECTING;



        if (p_lcb->transport == BT_TRANSPORT_LE) {
            btm_ble_update_link_topology_mask(p_lcb->link_role, FALSE);
        }




        for (p_ccb = p_lcb->ccb_queue.p_first_ccb; p_ccb; ) {
            tL2C_CCB *pn = p_ccb->p_next_ccb;







            if (p_ccb != p_lcb->p_pending_ccb) {
                l2c_csm_execute (p_ccb, L2CEVT_LP_DISCONNECT_IND, &reason);
            }
            p_ccb = pn;
        }



        if (p_lcb->transport == BT_TRANSPORT_BR_EDR)

        {

            btm_sco_acl_removed (p_lcb->remote_bd_addr);
        }






        if (p_lcb->ccb_queue.p_first_ccb != ((void*)0) || p_lcb->p_pending_ccb) {
            L2CAP_TRACE_DEBUG("l2c_link_hci_disc_comp: Restarting pending ACL request");
            transport = p_lcb->transport;


            if (p_lcb->transport == BT_TRANSPORT_LE) {
                l2cb.is_ble_connecting = FALSE;
                btm_acl_removed (p_lcb->remote_bd_addr, p_lcb->transport);

                BT_HDR *p_buf;
                while (!list_is_empty(p_lcb->link_xmit_data_q)) {
                    p_buf = list_front(p_lcb->link_xmit_data_q);
                    list_remove(p_lcb->link_xmit_data_q, p_buf);
                    osi_free(p_buf);
                }
            } else

            {
            }
            if (l2cu_create_conn(p_lcb, transport)) {
                lcb_is_free = FALSE;
            }
        }

        p_lcb->p_pending_ccb = ((void*)0);


        if (lcb_is_free) {
            l2cu_release_lcb (p_lcb);
        }
    }


    if (lcb_is_free && ((p_lcb = l2cu_find_lcb_by_state(LST_CONNECT_HOLDING)) != ((void*)0))) {

        l2cu_create_conn(p_lcb, BT_TRANSPORT_BR_EDR);
    }

    return status;
}
