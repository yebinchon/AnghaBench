
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ remote_busy; int controller_idle; int xmit_window_closed; int waiting_for_ack_q; } ;
struct TYPE_9__ {scalar_t__ mode; scalar_t__ tx_win_sz; } ;
struct TYPE_10__ {TYPE_2__ fcr; } ;
struct TYPE_12__ {TYPE_4__ fcrb; TYPE_1__* p_lcb; int xmit_hold_q; TYPE_3__ peer_cfg; } ;
typedef TYPE_5__ tL2C_CCB ;
struct TYPE_13__ {scalar_t__ controller_xmit_window; } ;
struct TYPE_8__ {int sent_not_acked; } ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 scalar_t__ L2CAP_FCR_ERTM_MODE ;
 scalar_t__ TRUE ;
 int assert (int ) ;
 int fixed_queue_is_empty (int ) ;
 scalar_t__ fixed_queue_length (int ) ;
 TYPE_6__ l2cb ;

BOOLEAN l2c_fcr_is_flow_controlled (tL2C_CCB *p_ccb)
{
    assert(p_ccb != ((void*)0));
    if (p_ccb->peer_cfg.fcr.mode == L2CAP_FCR_ERTM_MODE) {

        if ( (p_ccb->fcrb.remote_busy == TRUE)
         || (fixed_queue_length(p_ccb->fcrb.waiting_for_ack_q) >= p_ccb->peer_cfg.fcr.tx_win_sz) ) {

            if (!fixed_queue_is_empty(p_ccb->xmit_hold_q)) {
                p_ccb->fcrb.xmit_window_closed++;

                if ((p_ccb->p_lcb->sent_not_acked < 2) && (l2cb.controller_xmit_window > 0)) {
                    p_ccb->fcrb.controller_idle++;
                }
            }

            return (TRUE);
        }
    }
    return (FALSE);
}
