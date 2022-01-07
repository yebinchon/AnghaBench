
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int pL2CA_ConfigCfm_Cb; int pL2CA_ConfigInd_Cb; int * pL2CA_CongestionStatus_Cb; int pL2CA_DisconnectInd_Cb; } ;
struct TYPE_10__ {int pL2CA_UCD_Congestion_Status_Cb; int pL2CA_UCD_Data_Cb; int pL2CA_UCD_Discover_Cb; } ;
struct TYPE_8__ {TYPE_3__ cb_info; int state; } ;
struct TYPE_9__ {TYPE_4__ api; TYPE_1__ ucd; } ;
typedef TYPE_2__ tL2C_RCB ;
typedef TYPE_3__ tL2CAP_UCD_CB_INFO ;
typedef int tL2CAP_APPL_INFO ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int FALSE ;
 int L2CAP_TRACE_API (char*,int ) ;
 int L2CAP_TRACE_ERROR (char*,...) ;
 int L2C_UCD_RCB_ID ;
 int L2C_UCD_STATE_W4_DATA ;
 int TRUE ;
 int l2c_ucd_config_cfm_cback ;
 int l2c_ucd_config_ind_cback ;
 int l2c_ucd_congestion_status_cback ;
 int l2c_ucd_data_ind_cback ;
 int l2c_ucd_disconnect_ind_cback ;
 int l2c_ucd_discover_cback ;
 TYPE_2__* l2cu_allocate_rcb (int ) ;
 TYPE_2__* l2cu_find_rcb_by_psm (int ) ;
 int memset (TYPE_4__*,int ,int) ;

BOOLEAN L2CA_UcdRegister ( UINT16 psm, tL2CAP_UCD_CB_INFO *p_cb_info )
{
    tL2C_RCB *p_rcb;

    L2CAP_TRACE_API ("L2CA_UcdRegister()  PSM: 0x%04x", psm);

    if ((!p_cb_info->pL2CA_UCD_Discover_Cb)
            || (!p_cb_info->pL2CA_UCD_Data_Cb)) {
        L2CAP_TRACE_ERROR ("L2CAP - no callback registering PSM(0x%04x) on UCD", psm);
        return (FALSE);
    }

    if ((p_rcb = l2cu_find_rcb_by_psm (psm)) == ((void*)0)) {
        L2CAP_TRACE_ERROR ("L2CAP - no RCB for L2CA_UcdRegister, PSM: 0x%04x", psm);
        return (FALSE);
    }

    p_rcb->ucd.state = L2C_UCD_STATE_W4_DATA;
    p_rcb->ucd.cb_info = *p_cb_info;


    if ((p_rcb = l2cu_find_rcb_by_psm (L2C_UCD_RCB_ID)) == ((void*)0)) {
        if ((p_rcb = l2cu_allocate_rcb (L2C_UCD_RCB_ID)) == ((void*)0)) {
            L2CAP_TRACE_ERROR ("L2CAP - no RCB available for L2CA_UcdRegister");
            return (FALSE);
        } else {

            p_rcb->ucd.cb_info.pL2CA_UCD_Discover_Cb = l2c_ucd_discover_cback;
            p_rcb->ucd.cb_info.pL2CA_UCD_Data_Cb = l2c_ucd_data_ind_cback;
            p_rcb->ucd.cb_info.pL2CA_UCD_Congestion_Status_Cb = l2c_ucd_congestion_status_cback;

            memset (&p_rcb->api, 0, sizeof(tL2CAP_APPL_INFO));
            p_rcb->api.pL2CA_DisconnectInd_Cb = l2c_ucd_disconnect_ind_cback;


            p_rcb->api.pL2CA_CongestionStatus_Cb = ((void*)0);


            p_rcb->api.pL2CA_ConfigInd_Cb = l2c_ucd_config_ind_cback;
            p_rcb->api.pL2CA_ConfigCfm_Cb = l2c_ucd_config_cfm_cback;
        }
    }

    return (TRUE);
}
