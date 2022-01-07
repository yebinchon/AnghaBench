
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;


typedef void* tL2C_CHNL_STATE ;
struct TYPE_24__ {int mode; } ;
struct TYPE_25__ {TYPE_3__ fcr; } ;
struct TYPE_26__ {scalar_t__ local_cid; TYPE_4__ peer_cfg; int timer_entry; int config_done; void* chnl_state; TYPE_15__* p_lcb; TYPE_2__* p_rcb; } ;
typedef TYPE_5__ tL2C_CCB ;
typedef int tL2CAP_CFG_INFO ;
struct TYPE_27__ {void* mode; } ;
typedef TYPE_6__ tBTM_PM_PWR_MD ;
typedef int settings ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_22__ {int (* pL2CA_DataInd_Cb ) (scalar_t__,int *) ;int (* pL2CA_DisconnectInd_Cb ) (scalar_t__,int ) ;int (* pL2CA_ConfigInd_Cb ) (scalar_t__,int *) ;int (* pL2CA_QoSViolationInd_Cb ) (int ) ;} ;
struct TYPE_23__ {TYPE_1__ api; } ;
struct TYPE_21__ {int remote_bd_addr; } ;
typedef int BT_HDR ;


 void* BTM_PM_MD_ACTIVE ;
 int BTM_PM_SET_ONLY_ID ;
 int BTM_SetPowerMode (int ,int ,TYPE_6__*) ;
 int BTU_TTYPE_L2CAP_CHNL ;
 int CFG_DONE_MASK ;
 void* CST_CONFIG ;
 void* CST_W4_L2CAP_DISCONNECT_RSP ;
 void* CST_W4_L2CA_DISCONNECT_RSP ;
 int FALSE ;
 int L2CAP_CHNL_CFG_TIMEOUT ;
 int L2CAP_CHNL_DISCONNECT_TOUT ;
 scalar_t__ L2CAP_CONNECTIONLESS_CID ;
 int L2CAP_FCR_ERTM_MODE ;
 int L2CAP_PEER_CFG_OK ;
 int L2CAP_PEER_CFG_UNACCEPTABLE ;
 int L2CAP_TRACE_API (char*,scalar_t__) ;
 int L2CAP_TRACE_EVENT (char*,scalar_t__,...) ;
 int TRUE ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;
 int l2c_csm_get_event_name (scalar_t__) ;
 int l2c_enqueue_peer_data (TYPE_5__*,int *) ;
 int l2c_fcr_proc_ack_tout (TYPE_5__*) ;
 int l2c_fcr_proc_tout (TYPE_5__*) ;
 int l2c_link_check_send_pkts (TYPE_15__*,int *,int *) ;
 scalar_t__ l2c_ucd_process_event (TYPE_5__*,scalar_t__,void*) ;
 int l2cu_disconnect_chnl (TYPE_5__*) ;
 int l2cu_process_our_cfg_req (TYPE_5__*,int *) ;
 int l2cu_process_peer_cfg_req (TYPE_5__*,int *) ;
 int l2cu_release_ccb (TYPE_5__*) ;
 int l2cu_send_peer_config_req (TYPE_5__*,int *) ;
 int l2cu_send_peer_config_rsp (TYPE_5__*,int *) ;
 int l2cu_send_peer_disc_req (TYPE_5__*) ;
 int memset (void*,int ,int) ;
 int stub1 (scalar_t__,int ) ;
 int stub2 (int ) ;
 int stub3 (scalar_t__,int *) ;
 int stub4 (scalar_t__,int ) ;
 int stub5 (scalar_t__,int *) ;

__attribute__((used)) static void l2c_csm_open (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    UINT16 local_cid = p_ccb->local_cid;
    tL2CAP_CFG_INFO *p_cfg;
    tL2C_CHNL_STATE tempstate;
    UINT8 tempcfgdone;
    UINT8 cfg_result;


    L2CAP_TRACE_EVENT ("L2CAP - LCID: 0x%04x  st: OPEN  evt: %s",
                       p_ccb->local_cid, l2c_csm_get_event_name (event));





    if ( local_cid == L2CAP_CONNECTIONLESS_CID ) {

        if ( l2c_ucd_process_event (p_ccb, event, p_data) ) {

            return;
        }
    }


    switch (event) {
    case 130:
        L2CAP_TRACE_API ("L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed",
                         p_ccb->local_cid);
        l2cu_release_ccb (p_ccb);
        if (p_ccb->p_rcb) {
            (*p_ccb->p_rcb->api.pL2CA_DisconnectInd_Cb)(local_cid, FALSE);
        }
        break;

    case 129:

        if (p_ccb->p_rcb->api.pL2CA_QoSViolationInd_Cb) {
            (*p_ccb->p_rcb->api.pL2CA_QoSViolationInd_Cb)(p_ccb->p_lcb->remote_bd_addr);
        }
        break;

    case 136:
        p_cfg = (tL2CAP_CFG_INFO *)p_data;

        tempstate = p_ccb->chnl_state;
        tempcfgdone = p_ccb->config_done;
        p_ccb->chnl_state = CST_CONFIG;
        p_ccb->config_done &= ~CFG_DONE_MASK;

        btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CFG_TIMEOUT);

        if ((cfg_result = l2cu_process_peer_cfg_req (p_ccb, p_cfg)) == L2CAP_PEER_CFG_OK) {
            (*p_ccb->p_rcb->api.pL2CA_ConfigInd_Cb)(p_ccb->local_cid, p_cfg);
        }


        else if (cfg_result == L2CAP_PEER_CFG_UNACCEPTABLE) {
            btu_stop_timer(&p_ccb->timer_entry);
            p_ccb->chnl_state = tempstate;
            p_ccb->config_done = tempcfgdone;
            l2cu_send_peer_config_rsp (p_ccb, p_cfg);
        } else {




            l2cu_disconnect_chnl (p_ccb);
        }
        break;

    case 134:


    {
        tBTM_PM_PWR_MD settings;
        memset((void *)&settings, 0, sizeof(settings));
        settings.mode = BTM_PM_MD_ACTIVE;
        BTM_SetPowerMode (BTM_PM_SET_ONLY_ID, p_ccb->p_lcb->remote_bd_addr, &settings);
    }


    p_ccb->chnl_state = CST_W4_L2CA_DISCONNECT_RSP;
    btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_DISCONNECT_TOUT);
    L2CAP_TRACE_API ("L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  Conf Needed", p_ccb->local_cid);
    (*p_ccb->p_rcb->api.pL2CA_DisconnectInd_Cb)(p_ccb->local_cid, TRUE);
    break;

    case 135:
        if ((p_ccb->p_rcb) && (p_ccb->p_rcb->api.pL2CA_DataInd_Cb)) {
            (*p_ccb->p_rcb->api.pL2CA_DataInd_Cb)(p_ccb->local_cid, (BT_HDR *)p_data);
        }
        break;

    case 131:

    {
        tBTM_PM_PWR_MD settings;
        memset((void *)&settings, 0, sizeof(settings));
        settings.mode = BTM_PM_MD_ACTIVE;
        BTM_SetPowerMode (BTM_PM_SET_ONLY_ID, p_ccb->p_lcb->remote_bd_addr, &settings);
    }

    l2cu_send_peer_disc_req (p_ccb);
    p_ccb->chnl_state = CST_W4_L2CAP_DISCONNECT_RSP;
    btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_DISCONNECT_TOUT);
    break;

    case 132:
        l2c_enqueue_peer_data (p_ccb, (BT_HDR *)p_data);
        l2c_link_check_send_pkts (p_ccb->p_lcb, ((void*)0), ((void*)0));
        break;

    case 133:
        p_ccb->chnl_state = CST_CONFIG;
        p_ccb->config_done &= ~CFG_DONE_MASK;
        l2cu_process_our_cfg_req (p_ccb, (tL2CAP_CFG_INFO *)p_data);
        l2cu_send_peer_config_req (p_ccb, (tL2CAP_CFG_INFO *)p_data);
        btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_L2CAP_CHNL, L2CAP_CHNL_CFG_TIMEOUT);
        break;

    case 128:

        if (p_ccb->peer_cfg.fcr.mode == L2CAP_FCR_ERTM_MODE) {
            l2c_fcr_proc_tout (p_ccb);
        }
        break;

    case 137:
        l2c_fcr_proc_ack_tout (p_ccb);
        break;
    }
}
