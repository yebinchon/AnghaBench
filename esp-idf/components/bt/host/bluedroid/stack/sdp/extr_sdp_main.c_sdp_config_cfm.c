
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ result; scalar_t__ fcr_present; } ;
typedef TYPE_1__ tL2CAP_CFG_INFO ;
struct TYPE_10__ {int con_flags; int timer_entry; int con_state; } ;
typedef TYPE_2__ tCONN_CB ;
typedef int UINT16 ;
struct TYPE_11__ {TYPE_1__ l2cap_my_cfg; } ;


 int BTU_TTYPE_SDP ;
 scalar_t__ FALSE ;
 scalar_t__ L2CAP_CFG_OK ;
 int L2CA_ConfigReq (int ,TYPE_1__*) ;
 int SDP_CFG_FAILED ;
 int SDP_FLAGS_HIS_CFG_DONE ;
 int SDP_FLAGS_IS_ORIG ;
 int SDP_FLAGS_MY_CFG_DONE ;
 int SDP_INACT_TIMEOUT ;
 int SDP_STATE_CONNECTED ;
 int SDP_TRACE_EVENT (char*,int ,scalar_t__) ;
 int SDP_TRACE_WARNING (char*,int ) ;
 int btu_start_timer (int *,int ,int ) ;
 TYPE_7__ sdp_cb ;
 int sdp_disc_connected (TYPE_2__*) ;
 int sdp_disconnect (TYPE_2__*,int ) ;
 TYPE_2__* sdpu_find_ccb_by_cid (int ) ;

__attribute__((used)) static void sdp_config_cfm (UINT16 l2cap_cid, tL2CAP_CFG_INFO *p_cfg)
{
    tCONN_CB *p_ccb;

    SDP_TRACE_EVENT ("SDP - Rcvd cfg cfm, CID: 0x%x  Result: %d\n", l2cap_cid, p_cfg->result);


    if ((p_ccb = sdpu_find_ccb_by_cid (l2cap_cid)) == ((void*)0)) {
        SDP_TRACE_WARNING ("SDP - Rcvd L2CAP cfg ind, unknown CID: 0x%x\n", l2cap_cid);
        return;
    }


    if (p_cfg->result == L2CAP_CFG_OK) {
        p_ccb->con_flags |= SDP_FLAGS_MY_CFG_DONE;

        if (p_ccb->con_flags & SDP_FLAGS_HIS_CFG_DONE) {
            p_ccb->con_state = SDP_STATE_CONNECTED;

            if (p_ccb->con_flags & SDP_FLAGS_IS_ORIG) {
                sdp_disc_connected (p_ccb);
            } else

            {
                btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_SDP, SDP_INACT_TIMEOUT);
            }
        }
    } else {

        if (p_cfg->fcr_present) {
            tL2CAP_CFG_INFO cfg = sdp_cb.l2cap_my_cfg;
            cfg.fcr_present = FALSE;
            L2CA_ConfigReq (l2cap_cid, &cfg);


            return;
        }


        sdp_disconnect(p_ccb, SDP_CFG_FAILED);

    }
}
