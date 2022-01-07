
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ mode; scalar_t__ rtrans_tout; scalar_t__ mon_tout; } ;
struct TYPE_10__ {TYPE_3__ fcr; } ;
struct TYPE_7__ {scalar_t__ mode; } ;
struct TYPE_8__ {TYPE_1__ fcr; } ;
struct TYPE_11__ {TYPE_4__ our_cfg; TYPE_2__ peer_cfg; scalar_t__ out_cfg_fcr_present; } ;
typedef TYPE_5__ tL2C_CCB ;


 scalar_t__ L2CAP_FCR_ERTM_MODE ;
 scalar_t__ L2CAP_MIN_MONITOR_TOUT ;
 scalar_t__ L2CAP_MIN_RETRANS_TOUT ;
 int L2CAP_TRACE_DEBUG (char*,scalar_t__,scalar_t__) ;
 int assert (int ) ;

void l2c_fcr_adj_monitor_retran_timeout (tL2C_CCB *p_ccb)
{
    assert(p_ccb != ((void*)0));


    if (p_ccb->out_cfg_fcr_present) {




        if ((p_ccb->our_cfg.fcr.mode == L2CAP_FCR_ERTM_MODE)
                || (p_ccb->peer_cfg.fcr.mode == L2CAP_FCR_ERTM_MODE)) {

            p_ccb->our_cfg.fcr.mon_tout = L2CAP_MIN_MONITOR_TOUT;
            p_ccb->our_cfg.fcr.rtrans_tout = L2CAP_MIN_RETRANS_TOUT;
        } else {
            p_ccb->our_cfg.fcr.mon_tout = 0;
            p_ccb->our_cfg.fcr.rtrans_tout = 0;
        }

        L2CAP_TRACE_DEBUG ("l2c_fcr_adj_monitor_retran_timeout: mon_tout:%d, rtrans_tout:%d",
                           p_ccb->our_cfg.fcr.mon_tout, p_ccb->our_cfg.fcr.rtrans_tout);
    }
}
