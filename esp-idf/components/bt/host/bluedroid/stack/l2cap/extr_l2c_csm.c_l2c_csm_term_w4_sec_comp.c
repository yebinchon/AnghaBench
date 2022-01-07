
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int status; } ;
typedef TYPE_3__ tL2C_CONN_INFO ;
struct TYPE_14__ {scalar_t__ local_cid; TYPE_5__* p_lcb; TYPE_2__* p_rcb; int timer_entry; int remote_cid; int remote_id; int chnl_state; } ;
typedef TYPE_4__ tL2C_CCB ;
typedef int UINT16 ;
struct TYPE_15__ {scalar_t__ handle; int remote_bd_addr; int w4_info_rsp; } ;
struct TYPE_11__ {int (* pL2CA_ConnectInd_Cb ) (int ,scalar_t__,int ,int ) ;} ;
struct TYPE_12__ {int psm; TYPE_1__ api; } ;


 int BTM_DELAY_CHECK ;
 int BTU_TTYPE_L2CAP_CHNL ;
 int CST_W4_L2CA_CONNECT_RSP ;
 int FALSE ;
 int HCI_ERR_AUTH_FAILURE ;
 int L2CAP_CHNL_CONNECT_TOUT ;
 scalar_t__ L2CAP_CONNECTIONLESS_CID ;
 int L2CAP_CONN_PENDING ;
 int L2CAP_CONN_SECURITY_BLOCK ;
 int L2CAP_DELAY_CHECK_SM4 ;
 int L2CAP_TRACE_API (char*,scalar_t__) ;
 int L2CAP_TRACE_EVENT (char*,int,...) ;
 int btm_sec_abort_access_req (int ) ;
 int btm_sec_l2cap_access_req (int ,int ,scalar_t__,int ,int *,TYPE_4__*) ;
 int btsnd_hcic_disconnect (scalar_t__,int ) ;
 int btu_start_timer (int *,int ,int) ;
 int l2c_csm_get_event_name (int) ;
 int l2c_link_sec_comp ;
 scalar_t__ l2c_ucd_process_event (TYPE_4__*,int,void*) ;
 int l2cu_release_ccb (TYPE_4__*) ;
 int l2cu_send_peer_connect_rsp (TYPE_4__*,int ,int ) ;
 int l2cu_send_peer_disc_rsp (TYPE_5__*,int ,scalar_t__,int ) ;
 int osi_free (void*) ;
 int stub1 (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void l2c_csm_term_w4_sec_comp (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{

    L2CAP_TRACE_EVENT ("L2CAP - LCID: 0x%04x  st: TERM_W4_SEC_COMP  evt: %s", p_ccb->local_cid, l2c_csm_get_event_name (event));





    if ( p_ccb->local_cid == L2CAP_CONNECTIONLESS_CID ) {

        if ( l2c_ucd_process_event (p_ccb, event, p_data) ) {

            return;
        }
    }


    switch (event) {
    case 132:

        btm_sec_abort_access_req (p_ccb->p_lcb->remote_bd_addr);

        l2cu_release_ccb (p_ccb);
        break;

    case 131:
        p_ccb->chnl_state = CST_W4_L2CA_CONNECT_RSP;


        if (!p_ccb->p_lcb->w4_info_rsp) {

            btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CONNECT_TOUT);
            L2CAP_TRACE_API ("L2CAP - Calling Connect_Ind_Cb(), CID: 0x%04x", p_ccb->local_cid);

            (*p_ccb->p_rcb->api.pL2CA_ConnectInd_Cb) (p_ccb->p_lcb->remote_bd_addr, p_ccb->local_cid,
                    p_ccb->p_rcb->psm, p_ccb->remote_id);
        } else {
            l2cu_send_peer_connect_rsp(p_ccb, L2CAP_CONN_PENDING, 0);
        }
        break;

    case 130:
        if (((tL2C_CONN_INFO *)p_data)->status == BTM_DELAY_CHECK) {

            btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_DELAY_CHECK_SM4);
        } else {
            l2cu_send_peer_connect_rsp (p_ccb, L2CAP_CONN_SECURITY_BLOCK, 0);
            l2cu_release_ccb (p_ccb);
        }
        break;

    case 134:
    case 136:
        osi_free (p_data);
        break;

    case 133:
        l2cu_release_ccb (p_ccb);
        break;

    case 135:
        l2cu_send_peer_disc_rsp (p_ccb->p_lcb, p_ccb->remote_id, p_ccb->local_cid, p_ccb->remote_cid);


        btm_sec_abort_access_req (p_ccb->p_lcb->remote_bd_addr);

        l2cu_release_ccb (p_ccb);
        break;

    case 128:

        if (!btsnd_hcic_disconnect (p_ccb->p_lcb->handle, HCI_ERR_AUTH_FAILURE)) {
            L2CAP_TRACE_API ("L2CAP - Calling btsnd_hcic_disconnect for handle %i failed", p_ccb->p_lcb->handle);
            btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, 1);
        }
        break;

    case 129:
        btm_sec_l2cap_access_req (p_ccb->p_lcb->remote_bd_addr, p_ccb->p_rcb->psm,
                                  p_ccb->p_lcb->handle, FALSE, &l2c_link_sec_comp, p_ccb);
        break;
    }
}
