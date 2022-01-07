
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ mode; int mps; int mon_tout; int rtrans_tout; int max_transmit; int tx_win_sz; } ;
struct TYPE_8__ {scalar_t__ fcr_present; TYPE_1__ fcr; } ;
typedef TYPE_2__ tL2CAP_CFG_INFO ;
struct TYPE_9__ {int connection_id; int * device_address; int con_state; } ;
typedef TYPE_3__ tCONN_CB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_10__ {TYPE_2__ l2cap_my_cfg; } ;
typedef int BD_ADDR ;


 scalar_t__ FALSE ;
 int L2CAP_CONN_NO_PSM ;
 int L2CAP_CONN_OK ;
 scalar_t__ L2CAP_FCR_BASIC_MODE ;
 int L2CA_ConfigReq (int ,TYPE_2__*) ;
 int L2CA_ConnectRsp (int ,int ,int ,int ,int ) ;
 int SDP_STATE_CFG_SETUP ;
 int SDP_TRACE_DEBUG (char*,scalar_t__,int ,int ,int ,int ,int ) ;
 int SDP_TRACE_EVENT (char*,int ) ;
 int UNUSED (int ) ;
 int memcpy (int *,int ,int) ;
 TYPE_5__ sdp_cb ;
 TYPE_3__* sdpu_allocate_ccb () ;

__attribute__((used)) static void sdp_connect_ind (BD_ADDR bd_addr, UINT16 l2cap_cid, UINT16 psm, UINT8 l2cap_id)
{
    UNUSED(psm);

    tCONN_CB *p_ccb;


    if ((p_ccb = sdpu_allocate_ccb()) == ((void*)0)) {
        return;
    }


    p_ccb->con_state = SDP_STATE_CFG_SETUP;


    memcpy (&p_ccb->device_address[0], bd_addr, sizeof (BD_ADDR));
    p_ccb->connection_id = l2cap_cid;


    L2CA_ConnectRsp (bd_addr, l2cap_id, l2cap_cid, L2CAP_CONN_OK, L2CAP_CONN_OK);
    {
        tL2CAP_CFG_INFO cfg = sdp_cb.l2cap_my_cfg;

        if (cfg.fcr_present) {
            SDP_TRACE_DEBUG("sdp_connect_ind:  mode %u, txwinsz %u, max_trans %u, rtrans_tout %u, mon_tout %u, mps %u\n",
                            cfg.fcr.mode, cfg.fcr.tx_win_sz, cfg.fcr.max_transmit,
                            cfg.fcr.rtrans_tout, cfg.fcr.mon_tout, cfg.fcr.mps);
        }

        if ((!L2CA_ConfigReq (l2cap_cid, &cfg)) && cfg.fcr_present
                && cfg.fcr.mode != L2CAP_FCR_BASIC_MODE) {

            cfg.fcr.mode = L2CAP_FCR_BASIC_MODE;
            cfg.fcr_present = FALSE;
            L2CA_ConfigReq (l2cap_cid, &cfg);
        }
    }

    SDP_TRACE_EVENT ("SDP - Rcvd L2CAP conn ind, sent config req, CID 0x%x\n", p_ccb->connection_id);




}
