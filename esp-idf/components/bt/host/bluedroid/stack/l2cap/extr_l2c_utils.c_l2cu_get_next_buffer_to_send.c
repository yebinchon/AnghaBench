
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_16__ ;


struct TYPE_26__ {TYPE_8__** p_fixed_ccbs; } ;
typedef TYPE_7__ tL2C_LCB ;
struct TYPE_22__ {scalar_t__ mode; } ;
struct TYPE_23__ {TYPE_3__ fcr; } ;
struct TYPE_20__ {int retrans_q; scalar_t__ remote_busy; scalar_t__ wait_ack; } ;
struct TYPE_27__ {int local_cid; TYPE_6__* p_rcb; TYPE_4__ peer_cfg; int xmit_hold_q; TYPE_1__ fcrb; } ;
typedef TYPE_8__ tL2C_CCB ;
struct TYPE_24__ {int (* pL2CA_TxComplete_Cb ) (int ,int) ;} ;
struct TYPE_25__ {TYPE_5__ api; } ;
struct TYPE_21__ {int (* pL2CA_FixedTxComplete_Cb ) (int ,int) ;} ;
struct TYPE_19__ {TYPE_2__* fixed_reg; } ;
typedef int BT_HDR ;


 scalar_t__ L2CAP_FCR_BASIC_MODE ;
 scalar_t__ L2CAP_FCR_ERTM_MODE ;
 int L2CAP_NUM_FIXED_CHNLS ;
 int L2CAP_TRACE_ERROR (char*) ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 scalar_t__ fixed_queue_is_empty (int ) ;
 int * l2c_fcr_get_next_xmit_sdu_seg (TYPE_8__*,int ) ;
 scalar_t__ l2c_fcr_is_flow_controlled (TYPE_8__*) ;
 TYPE_16__ l2cb ;
 int l2cu_check_channel_congestion (TYPE_8__*) ;
 TYPE_8__* l2cu_get_next_channel (TYPE_7__*) ;
 TYPE_8__* l2cu_get_next_channel_in_rr (TYPE_7__*) ;
 int l2cu_set_acl_hci_header (int *,TYPE_8__*) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

BT_HDR *l2cu_get_next_buffer_to_send (tL2C_LCB *p_lcb)
{
    tL2C_CCB *p_ccb;
    BT_HDR *p_buf = ((void*)0);
    p_ccb = l2cu_get_next_channel_in_rr( p_lcb );





    if (p_ccb == ((void*)0)) {
        return (((void*)0));
    }

    if (p_ccb->peer_cfg.fcr.mode != L2CAP_FCR_BASIC_MODE) {

        if ((p_buf = l2c_fcr_get_next_xmit_sdu_seg(p_ccb, 0)) == ((void*)0)) {
            return (((void*)0));
        }

    } else {
        p_buf = (BT_HDR *)fixed_queue_dequeue(p_ccb->xmit_hold_q, 0);
        if (((void*)0) == p_buf) {
            L2CAP_TRACE_ERROR("l2cu_get_buffer_to_send() #2: No data to be sent");
            return (((void*)0));
        }
    }

    if ( p_ccb->p_rcb && p_ccb->p_rcb->api.pL2CA_TxComplete_Cb && (p_ccb->peer_cfg.fcr.mode != L2CAP_FCR_ERTM_MODE) ) {
        (*p_ccb->p_rcb->api.pL2CA_TxComplete_Cb)(p_ccb->local_cid, 1);
    }


    l2cu_check_channel_congestion (p_ccb);

    l2cu_set_acl_hci_header (p_buf, p_ccb);


    return (p_buf);
}
