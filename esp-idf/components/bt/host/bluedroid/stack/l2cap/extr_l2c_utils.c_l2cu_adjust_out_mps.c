
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int mps; } ;
struct TYPE_8__ {TYPE_2__ fcr; } ;
struct TYPE_9__ {int tx_mps; TYPE_3__ peer_cfg; TYPE_1__* p_lcb; } ;
typedef TYPE_4__ tL2C_CCB ;
typedef int UINT16 ;
struct TYPE_6__ {int remote_bd_addr; } ;


 int L2CAP_FCR_OVERHEAD ;
 int L2CAP_FCS_LEN ;
 int L2CAP_PKT_OVERHEAD ;
 int L2CAP_SDU_LEN_OVERHEAD ;
 int L2CAP_TRACE_DEBUG (char*,int,int,...) ;
 int btm_get_max_packet_size (int ) ;

void l2cu_adjust_out_mps (tL2C_CCB *p_ccb)
{
    UINT16 packet_size;


    packet_size = btm_get_max_packet_size (p_ccb->p_lcb->remote_bd_addr);

    if (packet_size <= (L2CAP_PKT_OVERHEAD + L2CAP_FCR_OVERHEAD + L2CAP_SDU_LEN_OVERHEAD + L2CAP_FCS_LEN)) {

        L2CAP_TRACE_DEBUG ("l2cu_adjust_out_mps bad packet size: %u  will use MPS: %u", packet_size, p_ccb->peer_cfg.fcr.mps);
        p_ccb->tx_mps = p_ccb->peer_cfg.fcr.mps;
    } else {
        packet_size -= (L2CAP_PKT_OVERHEAD + L2CAP_FCR_OVERHEAD + L2CAP_SDU_LEN_OVERHEAD + L2CAP_FCS_LEN);
        if (p_ccb->peer_cfg.fcr.mps >= packet_size) {
            p_ccb->tx_mps = p_ccb->peer_cfg.fcr.mps / packet_size * packet_size;
        } else {
            p_ccb->tx_mps = p_ccb->peer_cfg.fcr.mps;
        }

        L2CAP_TRACE_DEBUG ("l2cu_adjust_out_mps use %d   Based on peer_cfg.fcr.mps: %u  packet_size: %u",
                           p_ccb->tx_mps, p_ccb->peer_cfg.fcr.mps, packet_size);
    }
}
