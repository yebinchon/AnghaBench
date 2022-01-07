
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int l2cap_status; int l2cap_result; } ;
typedef TYPE_4__ tL2C_CONN_INFO ;
struct TYPE_14__ {int local_cid; int remote_id; TYPE_3__* p_rcb; TYPE_2__* p_lcb; int timer_entry; int chnl_state; } ;
typedef TYPE_5__ tL2C_CCB ;
typedef int (* tL2CA_DISCONNECT_IND_CB ) (int,int ) ;
typedef int UINT16 ;
struct TYPE_10__ {int (* pL2CA_ConnectInd_Cb ) (int ,int,int ,int ) ;int (* pL2CA_DisconnectInd_Cb ) (int,int ) ;} ;
struct TYPE_12__ {int psm; TYPE_1__ api; } ;
struct TYPE_11__ {int remote_bd_addr; } ;


 int BTU_TTYPE_L2CAP_CHNL ;
 int CST_CONFIG ;
 int CST_W4_L2CAP_DISCONNECT_RSP ;
 int FALSE ;
 int L2CAP_CHNL_CFG_TIMEOUT ;
 int L2CAP_CHNL_CONNECT_TOUT ;
 int L2CAP_CHNL_CONNECT_TOUT_EXT ;
 int L2CAP_CHNL_DISCONNECT_TOUT ;
 int L2CAP_CONN_NO_PSM ;
 int L2CAP_CONN_OK ;
 int L2CAP_TRACE_API (char*,int) ;
 int L2CAP_TRACE_EVENT (char*,int,...) ;
 int btu_start_timer (int *,int ,int ) ;
 int l2c_csm_get_event_name (int) ;
 int l2cu_release_ccb (TYPE_5__*) ;
 int l2cu_send_peer_connect_rsp (TYPE_5__*,int ,int ) ;
 int l2cu_send_peer_disc_req (TYPE_5__*) ;
 int osi_free (void*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int ,int,int ,int ) ;

__attribute__((used)) static void l2c_csm_w4_l2ca_connect_rsp (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    tL2C_CONN_INFO *p_ci;
    tL2CA_DISCONNECT_IND_CB *disconnect_ind = p_ccb->p_rcb->api.pL2CA_DisconnectInd_Cb;
    UINT16 local_cid = p_ccb->local_cid;


    L2CAP_TRACE_EVENT ("L2CAP - LCID: 0x%04x  st: W4_L2CA_CON_RSP  evt: %s", p_ccb->local_cid, l2c_csm_get_event_name (event));




    switch (event) {
    case 129:
        L2CAP_TRACE_API ("L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed", p_ccb->local_cid);
        l2cu_release_ccb (p_ccb);
        (*disconnect_ind)(local_cid, FALSE);
        break;

    case 133:
        p_ci = (tL2C_CONN_INFO *)p_data;


        if ((!p_ci) || (p_ci->l2cap_result == L2CAP_CONN_OK)) {
            l2cu_send_peer_connect_rsp (p_ccb, L2CAP_CONN_OK, 0);
            p_ccb->chnl_state = CST_CONFIG;
            btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CFG_TIMEOUT);
        } else {

            l2cu_send_peer_connect_rsp (p_ccb, p_ci->l2cap_result, p_ci->l2cap_status);
            btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CONNECT_TOUT_EXT);
        }
        break;

    case 132:
        p_ci = (tL2C_CONN_INFO *)p_data;
        l2cu_send_peer_connect_rsp (p_ccb, p_ci->l2cap_result, p_ci->l2cap_status);
        l2cu_release_ccb (p_ccb);
        break;

    case 128:
        l2cu_send_peer_connect_rsp (p_ccb, L2CAP_CONN_NO_PSM, 0);
        L2CAP_TRACE_API ("L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed", p_ccb->local_cid);
        l2cu_release_ccb (p_ccb);
        (*disconnect_ind)(local_cid, FALSE);
        break;

    case 131:
    case 135:
        osi_free (p_data);
        break;

    case 130:
        l2cu_send_peer_disc_req (p_ccb);
        p_ccb->chnl_state = CST_W4_L2CAP_DISCONNECT_RSP;
        btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_DISCONNECT_TOUT);
        break;

    case 134:

        btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CONNECT_TOUT);
        L2CAP_TRACE_API ("L2CAP - Calling Connect_Ind_Cb(), CID: 0x%04x", p_ccb->local_cid);

        (*p_ccb->p_rcb->api.pL2CA_ConnectInd_Cb) (p_ccb->p_lcb->remote_bd_addr,
                p_ccb->local_cid,
                p_ccb->p_rcb->psm,
                p_ccb->remote_id);
        break;
    }
}
