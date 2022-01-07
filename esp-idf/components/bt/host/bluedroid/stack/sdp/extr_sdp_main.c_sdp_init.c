
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tSDP_CB ;
struct TYPE_7__ {int * pL2CA_TxComplete_Cb; int * pL2CA_CongestionStatus_Cb; int pL2CA_DataInd_Cb; int * pL2CA_QoSViolationInd_Cb; int pL2CA_DisconnectCfm_Cb; int pL2CA_DisconnectInd_Cb; int pL2CA_ConfigCfm_Cb; int pL2CA_ConfigInd_Cb; int * pL2CA_ConnectPnd_Cb; int pL2CA_ConnectCfm_Cb; int pL2CA_ConnectInd_Cb; } ;
struct TYPE_5__ {int flush_to; void* flush_to_present; void* mtu; void* mtu_present; } ;
struct TYPE_6__ {TYPE_4__ reg_info; int trace_level; int max_recs_per_search; void* max_attr_list_size; TYPE_1__ l2cap_my_cfg; } ;


 int BTM_SEC_SERVICE_SDP_SERVER ;
 int BTM_SetSecurityLevel (void*,int ,int ,int ,int ,int ,int ) ;
 int BT_TRACE_LEVEL_NONE ;
 void* FALSE ;
 int L2CA_Register (int ,TYPE_4__*) ;
 int SDP_FLUSH_TO ;
 int SDP_INITIAL_TRACE_LEVEL ;
 int SDP_MAX_DISC_SERVER_RECS ;
 void* SDP_MTU_SIZE ;
 int SDP_PSM ;
 int SDP_SECURITY_LEVEL ;
 int SDP_SERVICE_NAME ;
 int SDP_TRACE_ERROR (char*) ;
 void* TRUE ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;
 TYPE_2__ sdp_cb ;
 int * sdp_cb_ptr ;
 int sdp_config_cfm ;
 int sdp_config_ind ;
 int sdp_connect_cfm ;
 int sdp_connect_ind ;
 int sdp_data_ind ;
 int sdp_disconnect_cfm ;
 int sdp_disconnect_ind ;

void sdp_init (void)
{




    memset (&sdp_cb, 0, sizeof (tSDP_CB));


    sdp_cb.l2cap_my_cfg.mtu_present = TRUE;
    sdp_cb.l2cap_my_cfg.mtu = SDP_MTU_SIZE;
    sdp_cb.l2cap_my_cfg.flush_to_present = TRUE;
    sdp_cb.l2cap_my_cfg.flush_to = SDP_FLUSH_TO;

    sdp_cb.max_attr_list_size = SDP_MTU_SIZE - 16;
    sdp_cb.max_recs_per_search = SDP_MAX_DISC_SERVER_RECS;



    if (!BTM_SetSecurityLevel (FALSE, SDP_SERVICE_NAME, BTM_SEC_SERVICE_SDP_SERVER,
                               SDP_SECURITY_LEVEL, SDP_PSM, 0, 0)) {
        SDP_TRACE_ERROR ("Security Registration Server failed\n");
        return;
    }




    if (!BTM_SetSecurityLevel (TRUE, SDP_SERVICE_NAME, BTM_SEC_SERVICE_SDP_SERVER,
                               SDP_SECURITY_LEVEL, SDP_PSM, 0, 0)) {
        SDP_TRACE_ERROR ("Security Registration for Client failed\n");
        return;
    }





    sdp_cb.trace_level = BT_TRACE_LEVEL_NONE;


    sdp_cb.reg_info.pL2CA_ConnectInd_Cb = sdp_connect_ind;
    sdp_cb.reg_info.pL2CA_ConnectCfm_Cb = sdp_connect_cfm;
    sdp_cb.reg_info.pL2CA_ConnectPnd_Cb = ((void*)0);
    sdp_cb.reg_info.pL2CA_ConfigInd_Cb = sdp_config_ind;
    sdp_cb.reg_info.pL2CA_ConfigCfm_Cb = sdp_config_cfm;
    sdp_cb.reg_info.pL2CA_DisconnectInd_Cb = sdp_disconnect_ind;
    sdp_cb.reg_info.pL2CA_DisconnectCfm_Cb = sdp_disconnect_cfm;
    sdp_cb.reg_info.pL2CA_QoSViolationInd_Cb = ((void*)0);
    sdp_cb.reg_info.pL2CA_DataInd_Cb = sdp_data_ind;
    sdp_cb.reg_info.pL2CA_CongestionStatus_Cb = ((void*)0);
    sdp_cb.reg_info.pL2CA_TxComplete_Cb = ((void*)0);


    if (!L2CA_Register (SDP_PSM, &sdp_cb.reg_info)) {
        SDP_TRACE_ERROR ("SDP Registration failed\n");
    }
}
