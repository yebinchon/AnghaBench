
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int mon_tout; int rtrans_tout; } ;
struct TYPE_12__ {TYPE_2__ fcr; } ;
struct TYPE_15__ {int p_lcb; TYPE_3__ our_cfg; int remote_cid; int remote_id; } ;
typedef TYPE_6__ tL2C_CCB ;
struct TYPE_14__ {int flush_timeout; int access_latency; int sdu_inter_time; int max_sdu_size; scalar_t__ stype; scalar_t__ id; } ;
struct TYPE_13__ {int mps; scalar_t__ max_transmit; scalar_t__ tx_win_sz; scalar_t__ mode; } ;
struct TYPE_10__ {int delay_variation; int latency; int peak_bandwidth; int token_bucket_size; int token_rate; scalar_t__ service_type; scalar_t__ qos_flags; } ;
struct TYPE_16__ {TYPE_5__ ext_flow_spec; scalar_t__ ext_flow_spec_present; TYPE_4__ fcr; scalar_t__ fcr_present; TYPE_1__ qos; scalar_t__ qos_present; int flush_to; scalar_t__ flush_to_present; int mtu; scalar_t__ mtu_present; int result; int flags; } ;
typedef TYPE_7__ tL2CAP_CFG_INFO ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
typedef int BT_HDR ;


 int HCI_DATA_PREAMBLE_SIZE ;
 scalar_t__ L2CAP_CFG_EXT_FLOW_OPTION_LEN ;
 scalar_t__ L2CAP_CFG_FCR_OPTION_LEN ;
 scalar_t__ L2CAP_CFG_FLUSH_OPTION_LEN ;
 scalar_t__ L2CAP_CFG_MTU_OPTION_LEN ;
 scalar_t__ L2CAP_CFG_OPTION_OVERHEAD ;
 scalar_t__ L2CAP_CFG_QOS_OPTION_LEN ;
 scalar_t__ L2CAP_CFG_TYPE_EXT_FLOW ;
 scalar_t__ L2CAP_CFG_TYPE_FCR ;
 scalar_t__ L2CAP_CFG_TYPE_FLUSH_TOUT ;
 scalar_t__ L2CAP_CFG_TYPE_MTU ;
 scalar_t__ L2CAP_CFG_TYPE_QOS ;
 int L2CAP_CMD_CONFIG_RSP ;
 int L2CAP_CMD_OVERHEAD ;
 scalar_t__ L2CAP_CONFIG_RSP_LEN ;
 int L2CAP_PKT_OVERHEAD ;
 int L2CAP_SEND_CMD_OFFSET ;
 int L2CAP_TRACE_WARNING (char*) ;
 int UINT16_TO_STREAM (int *,int ) ;
 int UINT32_TO_STREAM (int *,int ) ;
 int UINT8_TO_STREAM (int *,scalar_t__) ;
 int l2c_link_check_send_pkts (int ,int *,int *) ;
 int * l2cu_build_header (int ,scalar_t__,int ,int ) ;

void l2cu_send_peer_config_rsp (tL2C_CCB *p_ccb, tL2CAP_CFG_INFO *p_cfg)
{
    BT_HDR *p_buf;
    UINT16 cfg_len = 0;
    UINT8 *p;


    if (p_cfg->mtu_present) {
        cfg_len += L2CAP_CFG_MTU_OPTION_LEN + L2CAP_CFG_OPTION_OVERHEAD;
    }
    if (p_cfg->flush_to_present) {
        cfg_len += L2CAP_CFG_FLUSH_OPTION_LEN + L2CAP_CFG_OPTION_OVERHEAD;
    }
    if (p_cfg->qos_present) {
        cfg_len += L2CAP_CFG_QOS_OPTION_LEN + L2CAP_CFG_OPTION_OVERHEAD;
    }
    if (p_cfg->fcr_present) {
        cfg_len += L2CAP_CFG_FCR_OPTION_LEN + L2CAP_CFG_OPTION_OVERHEAD;
    }
    if (p_cfg->ext_flow_spec_present) {
        cfg_len += L2CAP_CFG_EXT_FLOW_OPTION_LEN + L2CAP_CFG_OPTION_OVERHEAD;
    }

    if ((p_buf = l2cu_build_header (p_ccb->p_lcb, (UINT16)(L2CAP_CONFIG_RSP_LEN + cfg_len),
                                    L2CAP_CMD_CONFIG_RSP, p_ccb->remote_id)) == ((void*)0) ) {
        L2CAP_TRACE_WARNING ("L2CAP - no buffer for conn_req");
        return;
    }

    p = (UINT8 *)(p_buf + 1) + L2CAP_SEND_CMD_OFFSET + HCI_DATA_PREAMBLE_SIZE + L2CAP_PKT_OVERHEAD + L2CAP_CMD_OVERHEAD;

    UINT16_TO_STREAM (p, p_ccb->remote_cid);
    UINT16_TO_STREAM (p, p_cfg->flags);
    UINT16_TO_STREAM (p, p_cfg->result);


    if (p_cfg->mtu_present) {
        UINT8_TO_STREAM (p, L2CAP_CFG_TYPE_MTU);
        UINT8_TO_STREAM (p, L2CAP_CFG_MTU_OPTION_LEN);
        UINT16_TO_STREAM (p, p_cfg->mtu);
    }
    if (p_cfg->flush_to_present) {
        UINT8_TO_STREAM (p, L2CAP_CFG_TYPE_FLUSH_TOUT);
        UINT8_TO_STREAM (p, L2CAP_CFG_FLUSH_OPTION_LEN);
        UINT16_TO_STREAM (p, p_cfg->flush_to);
    }
    if (p_cfg->qos_present) {
        UINT8_TO_STREAM (p, L2CAP_CFG_TYPE_QOS);
        UINT8_TO_STREAM (p, L2CAP_CFG_QOS_OPTION_LEN);
        UINT8_TO_STREAM (p, p_cfg->qos.qos_flags);
        UINT8_TO_STREAM (p, p_cfg->qos.service_type);
        UINT32_TO_STREAM (p, p_cfg->qos.token_rate);
        UINT32_TO_STREAM (p, p_cfg->qos.token_bucket_size);
        UINT32_TO_STREAM (p, p_cfg->qos.peak_bandwidth);
        UINT32_TO_STREAM (p, p_cfg->qos.latency);
        UINT32_TO_STREAM (p, p_cfg->qos.delay_variation);
    }
    if (p_cfg->fcr_present) {
        UINT8_TO_STREAM (p, L2CAP_CFG_TYPE_FCR);
        UINT8_TO_STREAM (p, L2CAP_CFG_FCR_OPTION_LEN);
        UINT8_TO_STREAM (p, p_cfg->fcr.mode);
        UINT8_TO_STREAM (p, p_cfg->fcr.tx_win_sz);
        UINT8_TO_STREAM (p, p_cfg->fcr.max_transmit);
        UINT16_TO_STREAM (p, p_ccb->our_cfg.fcr.rtrans_tout);
        UINT16_TO_STREAM (p, p_ccb->our_cfg.fcr.mon_tout);
        UINT16_TO_STREAM (p, p_cfg->fcr.mps);
    }

    if (p_cfg->ext_flow_spec_present) {
        UINT8_TO_STREAM (p, L2CAP_CFG_TYPE_EXT_FLOW);
        UINT8_TO_STREAM (p, L2CAP_CFG_EXT_FLOW_OPTION_LEN);
        UINT8_TO_STREAM (p, p_cfg->ext_flow_spec.id);
        UINT8_TO_STREAM (p, p_cfg->ext_flow_spec.stype);
        UINT16_TO_STREAM (p, p_cfg->ext_flow_spec.max_sdu_size);
        UINT32_TO_STREAM (p, p_cfg->ext_flow_spec.sdu_inter_time);
        UINT32_TO_STREAM (p, p_cfg->ext_flow_spec.access_latency);
        UINT32_TO_STREAM (p, p_cfg->ext_flow_spec.flush_timeout);
    }

    l2c_link_check_send_pkts (p_ccb->p_lcb, ((void*)0), p_buf);
}
