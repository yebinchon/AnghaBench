
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;
struct TYPE_3__ {unsigned int event; int layer_specific; } ;
typedef TYPE_1__ BT_HDR ;
typedef int BOOLEAN ;


 int APPL_TRACE_DEBUG (char*,unsigned int) ;




 int TRUE ;
 int bta_ag_api_disable (int *) ;
 int bta_ag_api_enable (int *) ;
 int bta_ag_api_register (int *) ;
 int bta_ag_api_result (int *) ;
 int * bta_ag_scb_by_idx (int ) ;
 int bta_ag_sm_execute (int *,int,int *) ;

BOOLEAN bta_ag_hdl_event(BT_HDR *p_msg)
{
    tBTA_AG_SCB *p_scb;
    APPL_TRACE_DEBUG("bta_ag_hdl_event: Event 0x%04x ", p_msg->event);

    switch (p_msg->event) {

        case 130:
            bta_ag_api_enable((tBTA_AG_DATA *) p_msg);
            break;


        case 131:
            bta_ag_api_disable((tBTA_AG_DATA *) p_msg);
            break;


        case 129:
            bta_ag_api_register((tBTA_AG_DATA *) p_msg);
            break;


        case 128:
            bta_ag_api_result((tBTA_AG_DATA *) p_msg);
            break;


        default:
            if ((p_scb = bta_ag_scb_by_idx(p_msg->layer_specific)) != ((void*)0)) {
                APPL_TRACE_DEBUG("bta_ag_hdl_event: p_scb 0x%08x ", (unsigned int)p_scb);
                bta_ag_sm_execute(p_scb, p_msg->event, (tBTA_AG_DATA *) p_msg);
            }
            break;
    }
    return TRUE;
}
