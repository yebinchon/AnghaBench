
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {size_t local_cid; int buff_quota; TYPE_6__* p_lcb; TYPE_4__* p_rcb; int xmit_hold_q; void* cong_sent; } ;
typedef TYPE_7__ tL2C_CCB ;
typedef size_t UINT8 ;
struct TYPE_17__ {TYPE_5__* fixed_reg; void* is_cong_cback_context; } ;
struct TYPE_15__ {int remote_bd_addr; TYPE_7__** p_fixed_ccbs; int ucd_out_sec_pending_q; } ;
struct TYPE_14__ {int (* pL2CA_FixedCong_Cb ) (int ,void*) ;} ;
struct TYPE_11__ {int (* pL2CA_UCD_Congestion_Status_Cb ) (int ,void*) ;} ;
struct TYPE_12__ {TYPE_2__ cb_info; } ;
struct TYPE_10__ {int (* pL2CA_CongestionStatus_Cb ) (size_t,void*) ;} ;
struct TYPE_13__ {TYPE_3__ ucd; TYPE_1__ api; } ;


 void* FALSE ;
 size_t L2CAP_CONNECTIONLESS_CID ;
 size_t L2CAP_NUM_FIXED_CHNLS ;
 int L2CAP_TRACE_DEBUG (char*,size_t,size_t,int) ;
 void* TRUE ;
 size_t fixed_queue_length (int ) ;
 TYPE_9__ l2cb ;
 int stub1 (size_t,void*) ;
 int stub2 (int ,void*) ;
 int stub3 (int ,void*) ;
 int stub4 (size_t,void*) ;
 int stub5 (int ,void*) ;
 int stub6 (int ,void*) ;

void l2cu_check_channel_congestion (tL2C_CCB *p_ccb)
{
    size_t q_count = fixed_queue_length(p_ccb->xmit_hold_q);


    if ( p_ccb->local_cid == L2CAP_CONNECTIONLESS_CID ) {
        q_count += fixed_queue_length(p_ccb->p_lcb->ucd_out_sec_pending_q);
    }



    if (p_ccb->buff_quota != 0) {

        if ( p_ccb->cong_sent ) {

            if (q_count <= (p_ccb->buff_quota / 2)) {
                p_ccb->cong_sent = FALSE;
                if (p_ccb->p_rcb && p_ccb->p_rcb->api.pL2CA_CongestionStatus_Cb) {
                    L2CAP_TRACE_DEBUG ("L2CAP - Calling CongestionStatus_Cb (FALSE), CID: 0x%04x  xmit_hold_q.count: %u  buff_quota: %u",
                                       p_ccb->local_cid, q_count, p_ccb->buff_quota);


                    l2cb.is_cong_cback_context = TRUE;
                    (*p_ccb->p_rcb->api.pL2CA_CongestionStatus_Cb)(p_ccb->local_cid, FALSE);
                    l2cb.is_cong_cback_context = FALSE;
                }

                else if ( p_ccb->p_rcb && p_ccb->local_cid == L2CAP_CONNECTIONLESS_CID ) {
                    if ( p_ccb->p_rcb->ucd.cb_info.pL2CA_UCD_Congestion_Status_Cb ) {
                        L2CAP_TRACE_DEBUG ("L2CAP - Calling UCD CongestionStatus_Cb (FALSE), SecPendingQ:%u,XmitQ:%u,Quota:%u",
                                           fixed_queue_length(p_ccb->p_lcb->ucd_out_sec_pending_q),
                                           fixed_queue_length(p_ccb->xmit_hold_q),
                                           p_ccb->buff_quota);
                        p_ccb->p_rcb->ucd.cb_info.pL2CA_UCD_Congestion_Status_Cb( p_ccb->p_lcb->remote_bd_addr, FALSE );
                    }
                }
            }
        } else {

            if (q_count > p_ccb->buff_quota) {
                p_ccb->cong_sent = TRUE;
                if (p_ccb->p_rcb && p_ccb->p_rcb->api.pL2CA_CongestionStatus_Cb) {
                    L2CAP_TRACE_DEBUG ("L2CAP - Calling CongestionStatus_Cb (TRUE),CID:0x%04x,XmitQ:%u,Quota:%u",
                                       p_ccb->local_cid, q_count, p_ccb->buff_quota);

                    (*p_ccb->p_rcb->api.pL2CA_CongestionStatus_Cb)(p_ccb->local_cid, TRUE);
                }

                else if ( p_ccb->p_rcb && p_ccb->local_cid == L2CAP_CONNECTIONLESS_CID ) {
                    if ( p_ccb->p_rcb->ucd.cb_info.pL2CA_UCD_Congestion_Status_Cb ) {
                        L2CAP_TRACE_DEBUG ("L2CAP - Calling UCD CongestionStatus_Cb (TRUE), SecPendingQ:%u,XmitQ:%u,Quota:%u",
                                          fixed_queue_length(p_ccb->p_lcb->ucd_out_sec_pending_q),
                                          fixed_queue_length(p_ccb->xmit_hold_q),
                                          p_ccb->buff_quota);
                        p_ccb->p_rcb->ucd.cb_info.pL2CA_UCD_Congestion_Status_Cb( p_ccb->p_lcb->remote_bd_addr, TRUE );
                    }
                }
            }
        }
    }
}
