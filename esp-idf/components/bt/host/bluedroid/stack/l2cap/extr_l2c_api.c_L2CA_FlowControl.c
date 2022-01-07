
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ local_busy; int wait_ack; } ;
struct TYPE_7__ {scalar_t__ mode; } ;
struct TYPE_8__ {TYPE_1__ fcr; } ;
struct TYPE_10__ {scalar_t__ chnl_state; TYPE_3__ fcrb; TYPE_2__ peer_cfg; } ;
typedef TYPE_4__ tL2C_CCB ;
typedef int UINT16 ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ CST_OPEN ;
 scalar_t__ FALSE ;
 scalar_t__ L2CAP_FCR_ERTM_MODE ;
 int L2CAP_FCR_P_BIT ;
 int L2CAP_FCR_SUP_RNR ;
 int L2CAP_FCR_SUP_RR ;
 int L2CAP_TRACE_API (char*,scalar_t__,int ) ;
 int L2CAP_TRACE_EVENT (char*,scalar_t__) ;
 int L2CAP_TRACE_WARNING (char*,int ,scalar_t__) ;
 scalar_t__ TRUE ;
 int l2c_fcr_send_S_frame (TYPE_4__*,int ,int ) ;
 TYPE_4__* l2cu_find_ccb_by_cid (int *,int ) ;

BOOLEAN L2CA_FlowControl (UINT16 cid, BOOLEAN data_enabled)
{
    tL2C_CCB *p_ccb;
    BOOLEAN on_off = !data_enabled;

    L2CAP_TRACE_API ("L2CA_FlowControl(%d)  CID: 0x%04x", on_off, cid);


    if ((p_ccb = l2cu_find_ccb_by_cid (((void*)0), cid)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no CCB for L2CA_FlowControl, CID: 0x%04x  data_enabled: %d", cid, data_enabled);
        return (FALSE);
    }

    if (p_ccb->peer_cfg.fcr.mode != L2CAP_FCR_ERTM_MODE) {
        L2CAP_TRACE_EVENT ("L2CA_FlowControl()  invalid mode:%d", p_ccb->peer_cfg.fcr.mode);
        return (FALSE);
    }
    if (p_ccb->fcrb.local_busy != on_off) {
        p_ccb->fcrb.local_busy = on_off;

        if ( (p_ccb->chnl_state == CST_OPEN) && (!p_ccb->fcrb.wait_ack) ) {
            if (on_off) {
                l2c_fcr_send_S_frame (p_ccb, L2CAP_FCR_SUP_RNR, 0);
            } else {
                l2c_fcr_send_S_frame (p_ccb, L2CAP_FCR_SUP_RR, L2CAP_FCR_P_BIT);
            }
        }
    }

    return (TRUE);
}
