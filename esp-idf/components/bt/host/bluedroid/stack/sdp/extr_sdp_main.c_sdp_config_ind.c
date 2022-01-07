
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ mode; scalar_t__ tx_win_sz; } ;
struct TYPE_14__ {scalar_t__ mtu; scalar_t__ result; void* fcr_present; TYPE_3__ fcr; void* mtu_present; void* flush_to_present; } ;
typedef TYPE_4__ tL2CAP_CFG_INFO ;
struct TYPE_15__ {scalar_t__ rem_mtu_size; int con_flags; int timer_entry; int con_state; } ;
typedef TYPE_5__ tCONN_CB ;
typedef int UINT16 ;
struct TYPE_11__ {scalar_t__ mode; scalar_t__ tx_win_sz; } ;
struct TYPE_12__ {TYPE_1__ fcr; } ;
struct TYPE_16__ {TYPE_2__ l2cap_my_cfg; } ;


 int BTU_TTYPE_SDP ;
 void* FALSE ;
 scalar_t__ L2CAP_CFG_OK ;
 void* L2CAP_CFG_UNACCEPTABLE_PARAMS ;
 scalar_t__ L2CAP_DEFAULT_MTU ;
 scalar_t__ L2CAP_FCR_BASIC_MODE ;
 int L2CA_ConfigRsp (int ,TYPE_4__*) ;
 int SDP_FLAGS_HIS_CFG_DONE ;
 int SDP_FLAGS_IS_ORIG ;
 int SDP_FLAGS_MY_CFG_DONE ;
 int SDP_INACT_TIMEOUT ;
 scalar_t__ SDP_MTU_SIZE ;
 int SDP_STATE_CONNECTED ;
 int SDP_TRACE_DEBUG (char*) ;
 int SDP_TRACE_EVENT (char*,int ) ;
 int SDP_TRACE_WARNING (char*,int ) ;
 int btu_start_timer (int *,int ,int ) ;
 TYPE_9__ sdp_cb ;
 int sdp_disc_connected (TYPE_5__*) ;
 TYPE_5__* sdpu_find_ccb_by_cid (int ) ;

__attribute__((used)) static void sdp_config_ind (UINT16 l2cap_cid, tL2CAP_CFG_INFO *p_cfg)
{
    tCONN_CB *p_ccb;


    if ((p_ccb = sdpu_find_ccb_by_cid (l2cap_cid)) == ((void*)0)) {
        SDP_TRACE_WARNING ("SDP - Rcvd L2CAP cfg ind, unknown CID: 0x%x\n", l2cap_cid);
        return;
    }


    if (!p_cfg->mtu_present) {

        p_ccb->rem_mtu_size = (L2CAP_DEFAULT_MTU > SDP_MTU_SIZE) ? SDP_MTU_SIZE : L2CAP_DEFAULT_MTU;
    } else {
        if (p_cfg->mtu > SDP_MTU_SIZE) {
            p_ccb->rem_mtu_size = SDP_MTU_SIZE;
        } else {
            p_ccb->rem_mtu_size = p_cfg->mtu;
        }
    }


    p_cfg->flush_to_present = FALSE;
    p_cfg->mtu_present = FALSE;
    p_cfg->result = L2CAP_CFG_OK;


    if (p_cfg->fcr_present) {

        if (p_cfg->fcr.mode != L2CAP_FCR_BASIC_MODE) {
            if (sdp_cb.l2cap_my_cfg.fcr.mode != L2CAP_FCR_BASIC_MODE
                    && p_cfg->fcr.tx_win_sz > sdp_cb.l2cap_my_cfg.fcr.tx_win_sz) {
                p_cfg->fcr.tx_win_sz = sdp_cb.l2cap_my_cfg.fcr.tx_win_sz;
                p_cfg->result = L2CAP_CFG_UNACCEPTABLE_PARAMS;
                SDP_TRACE_DEBUG("sdp_config_ind(CONFIG) -> Please try again with SMALLER TX WINDOW\n");
            }


            if (sdp_cb.l2cap_my_cfg.fcr.mode == L2CAP_FCR_BASIC_MODE) {

                p_cfg->fcr.mode = L2CAP_FCR_BASIC_MODE;
                p_cfg->result = L2CAP_CFG_UNACCEPTABLE_PARAMS;
                SDP_TRACE_DEBUG("sdp_config_ind(CONFIG) -> Please try again with BASIC mode\n");
            }

            if (p_cfg->result != L2CAP_CFG_OK) {
                SDP_TRACE_WARNING ("SDP - Rcvd cfg ind, Unacceptable Parameters sent cfg cfm, CID: 0x%x\n", l2cap_cid);
                L2CA_ConfigRsp (l2cap_cid, p_cfg);
                return;
            }
        } else {
            p_cfg->fcr_present = FALSE;
        }
    }

    L2CA_ConfigRsp (l2cap_cid, p_cfg);

    SDP_TRACE_EVENT ("SDP - Rcvd cfg ind, sent cfg cfm, CID: 0x%x\n", l2cap_cid);

    p_ccb->con_flags |= SDP_FLAGS_HIS_CFG_DONE;

    if (p_ccb->con_flags & SDP_FLAGS_MY_CFG_DONE) {
        p_ccb->con_state = SDP_STATE_CONNECTED;

        if (p_ccb->con_flags & SDP_FLAGS_IS_ORIG) {
            sdp_disc_connected (p_ccb);
        } else

        {
            btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_SDP, SDP_INACT_TIMEOUT);
        }
    }

}
