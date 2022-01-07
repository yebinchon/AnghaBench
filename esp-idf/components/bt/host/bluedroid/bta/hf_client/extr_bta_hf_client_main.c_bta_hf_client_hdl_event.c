
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_DATA ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ BT_HDR ;
typedef int BOOLEAN ;


 int APPL_TRACE_DEBUG (char*,int ,int) ;


 int TRUE ;
 int bta_hf_client_api_disable (int *) ;
 int bta_hf_client_api_enable (int *) ;
 int bta_hf_client_evt_str (int) ;
 int bta_hf_client_sm_execute (int,int *) ;

BOOLEAN bta_hf_client_hdl_event(BT_HDR *p_msg)
{

    APPL_TRACE_DEBUG("bta_hf_client_hdl_event %s (0x%x)", bta_hf_client_evt_str(p_msg->event), p_msg->event);


    switch (p_msg->event) {

    case 128:
        bta_hf_client_api_enable((tBTA_HF_CLIENT_DATA *) p_msg);
        break;


    case 129:
        bta_hf_client_api_disable((tBTA_HF_CLIENT_DATA *) p_msg);
        break;

    default:
        bta_hf_client_sm_execute(p_msg->event, (tBTA_HF_CLIENT_DATA *) p_msg);
        break;
    }
    return TRUE;
}
