
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int qos; scalar_t__ qos_present; } ;
struct TYPE_9__ {TYPE_1__ peer_cfg; } ;
typedef TYPE_2__ tL2C_CCB ;
struct TYPE_10__ {scalar_t__ qos_present; int qos; } ;
typedef TYPE_3__ tL2CAP_CFG_INFO ;


 scalar_t__ FALSE ;
 int l2c_fcr_adj_our_rsp_options (TYPE_2__*,TYPE_3__*) ;

void l2cu_process_our_cfg_rsp (tL2C_CCB *p_ccb, tL2CAP_CFG_INFO *p_cfg)
{

    if ( (p_cfg->qos_present) && (p_ccb->peer_cfg.qos_present) ) {
        p_ccb->peer_cfg.qos = p_cfg->qos;
    } else {
        p_cfg->qos_present = FALSE;
    }

    l2c_fcr_adj_our_rsp_options (p_ccb, p_cfg);
}
