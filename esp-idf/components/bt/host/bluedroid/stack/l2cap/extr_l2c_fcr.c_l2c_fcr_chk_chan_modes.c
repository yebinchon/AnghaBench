
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int allowed_modes; } ;
struct TYPE_7__ {TYPE_2__ ertm_info; TYPE_1__* p_lcb; } ;
typedef TYPE_3__ tL2C_CCB ;
typedef int UINT8 ;
struct TYPE_5__ {int peer_ext_fea; } ;


 int L2CAP_EXTFEA_ENH_RETRANS ;
 int L2CAP_EXTFEA_STREAM_MODE ;
 int L2CAP_FCR_CHAN_OPT_ERTM ;
 int L2CAP_FCR_CHAN_OPT_STREAM ;
 int L2CAP_TRACE_WARNING (char*) ;
 int assert (int ) ;

UINT8 l2c_fcr_chk_chan_modes (tL2C_CCB *p_ccb)
{
    assert(p_ccb != ((void*)0));


    if (!(p_ccb->p_lcb->peer_ext_fea & L2CAP_EXTFEA_ENH_RETRANS)) {
        p_ccb->ertm_info.allowed_modes &= ~L2CAP_FCR_CHAN_OPT_ERTM;
    }

    if (!(p_ccb->p_lcb->peer_ext_fea & L2CAP_EXTFEA_STREAM_MODE)) {
        p_ccb->ertm_info.allowed_modes &= ~L2CAP_FCR_CHAN_OPT_STREAM;
    }


    if (!p_ccb->ertm_info.allowed_modes) {
        L2CAP_TRACE_WARNING ("L2CAP - Peer does not support our desired channel types");
    }

    return (p_ccb->ertm_info.allowed_modes);
}
