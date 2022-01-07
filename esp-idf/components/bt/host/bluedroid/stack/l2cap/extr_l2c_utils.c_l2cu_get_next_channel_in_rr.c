
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {size_t rr_pri; TYPE_4__* rr_serv; } ;
typedef TYPE_5__ tL2C_LCB ;
struct TYPE_11__ {scalar_t__ mode; } ;
struct TYPE_12__ {TYPE_2__ fcr; } ;
struct TYPE_10__ {int retrans_q; scalar_t__ remote_busy; scalar_t__ wait_ack; } ;
struct TYPE_15__ {scalar_t__ ccb_priority; scalar_t__ chnl_state; int local_cid; int xmit_hold_q; TYPE_3__ peer_cfg; TYPE_1__ fcrb; struct TYPE_15__* p_next_ccb; } ;
typedef TYPE_6__ tL2C_CCB ;
struct TYPE_13__ {int num_ccb; int quota; TYPE_6__* p_serve_ccb; TYPE_6__* p_first_ccb; } ;


 scalar_t__ CST_OPEN ;
 scalar_t__ L2CAP_FCR_BASIC_MODE ;
 scalar_t__ L2CAP_FCR_ERTM_MODE ;
 int L2CAP_GET_PRIORITY_QUOTA (size_t) ;
 int L2CAP_NUM_CHNL_PRIORITY ;
 int L2CAP_TRACE_DEBUG (char*,scalar_t__,int ,int ) ;
 int L2CAP_TRACE_ERROR (char*,size_t) ;
 scalar_t__ fixed_queue_is_empty (int ) ;
 int fixed_queue_length (int ) ;
 scalar_t__ l2c_fcr_is_flow_controlled (TYPE_6__*) ;

__attribute__((used)) static tL2C_CCB *l2cu_get_next_channel_in_rr(tL2C_LCB *p_lcb)
{
    tL2C_CCB *p_serve_ccb = ((void*)0);
    tL2C_CCB *p_ccb;

    int i, j;


    for ( i = 0; (i < L2CAP_NUM_CHNL_PRIORITY) && (!p_serve_ccb); i++ ) {

        for ( j = 0; (j < p_lcb->rr_serv[p_lcb->rr_pri].num_ccb) && (!p_serve_ccb); j++) {

            p_ccb = p_lcb->rr_serv[p_lcb->rr_pri].p_serve_ccb;

            if (!p_ccb) {
                L2CAP_TRACE_ERROR("p_serve_ccb is NULL, rr_pri=%d", p_lcb->rr_pri);
                return ((void*)0);
            }

            L2CAP_TRACE_DEBUG("RR scan pri=%d, lcid=0x%04x, q_cout=%d",
                              p_ccb->ccb_priority, p_ccb->local_cid,
                              fixed_queue_length(p_ccb->xmit_hold_q));



            if (( p_ccb->p_next_ccb == ((void*)0) )
                    || ( p_ccb->p_next_ccb->ccb_priority != p_ccb->ccb_priority )) {

                p_lcb->rr_serv[p_lcb->rr_pri].p_serve_ccb = p_lcb->rr_serv[p_lcb->rr_pri].p_first_ccb;
            } else {

                p_lcb->rr_serv[p_lcb->rr_pri].p_serve_ccb = p_ccb->p_next_ccb;
            }

            if (p_ccb->chnl_state != CST_OPEN) {
                continue;
            }


            if (p_ccb->peer_cfg.fcr.mode != L2CAP_FCR_BASIC_MODE) {
                if (p_ccb->fcrb.wait_ack || p_ccb->fcrb.remote_busy) {
                    continue;
                }

                if (fixed_queue_is_empty(p_ccb->fcrb.retrans_q)) {
                    if (fixed_queue_is_empty(p_ccb->xmit_hold_q)) {
                        continue;
                    }




                    if ( (p_ccb->peer_cfg.fcr.mode == L2CAP_FCR_ERTM_MODE) && (l2c_fcr_is_flow_controlled (p_ccb)) ) {
                        continue;
                    }

                }
            } else {
                if (fixed_queue_is_empty(p_ccb->xmit_hold_q)) {
                    continue;
                }
            }


            p_serve_ccb = p_ccb;

            p_lcb->rr_serv[p_lcb->rr_pri].quota--;
        }


        if ((p_lcb->rr_serv[p_lcb->rr_pri].quota == 0) || (!p_serve_ccb)) {

            p_lcb->rr_pri = (p_lcb->rr_pri + 1) % L2CAP_NUM_CHNL_PRIORITY;

            p_lcb->rr_serv[p_lcb->rr_pri].quota = L2CAP_GET_PRIORITY_QUOTA(p_lcb->rr_pri);
        }
    }

    if (p_serve_ccb) {
        L2CAP_TRACE_DEBUG("RR service pri=%d, quota=%d, lcid=0x%04x",
                          p_serve_ccb->ccb_priority,
                          p_lcb->rr_serv[p_serve_ccb->ccb_priority].quota,
                          p_serve_ccb->local_cid );
    }

    return p_serve_ccb;
}
