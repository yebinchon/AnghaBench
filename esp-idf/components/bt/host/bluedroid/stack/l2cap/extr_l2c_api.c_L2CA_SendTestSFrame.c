
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int next_seq_expected; } ;
struct TYPE_7__ {scalar_t__ mode; } ;
struct TYPE_8__ {TYPE_1__ fcr; } ;
struct TYPE_10__ {scalar_t__ chnl_state; TYPE_3__ fcrb; TYPE_2__ peer_cfg; } ;
typedef TYPE_4__ tL2C_CCB ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 scalar_t__ CST_OPEN ;
 int FALSE ;
 scalar_t__ L2CAP_FCR_ERTM_MODE ;
 int L2CAP_FCR_F_BIT ;
 int L2CAP_FCR_P_BIT ;
 int L2CAP_TRACE_API (char*,int ,int,int) ;
 int L2CAP_TRACE_WARNING (char*,int ) ;
 int TRUE ;
 int l2c_fcr_send_S_frame (TYPE_4__*,int ,int ) ;
 TYPE_4__* l2cu_find_ccb_by_cid (int *,int ) ;

BOOLEAN L2CA_SendTestSFrame (UINT16 cid, UINT8 sup_type, UINT8 back_track)
{
    tL2C_CCB *p_ccb;

    L2CAP_TRACE_API ("L2CA_SendTestSFrame()  CID: 0x%04x  Type: 0x%02x  back_track: %u", cid, sup_type, back_track);


    if ((p_ccb = l2cu_find_ccb_by_cid (((void*)0), cid)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no CCB for L2CA_SendTestSFrame, CID: %d", cid);
        return (FALSE);
    }

    if ( (p_ccb->chnl_state != CST_OPEN) || (p_ccb->peer_cfg.fcr.mode != L2CAP_FCR_ERTM_MODE) ) {
        return (FALSE);
    }

    p_ccb->fcrb.next_seq_expected -= back_track;

    l2c_fcr_send_S_frame (p_ccb, (UINT16)(sup_type & 3), (UINT16)(sup_type & (L2CAP_FCR_P_BIT | L2CAP_FCR_F_BIT)));

    return (TRUE);
}
