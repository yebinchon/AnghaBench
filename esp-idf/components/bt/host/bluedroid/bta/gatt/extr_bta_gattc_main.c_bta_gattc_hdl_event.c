
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int tBTA_GATTC_RCB ;
struct TYPE_23__ {int client_if; } ;
struct TYPE_22__ {int client_if; } ;
struct TYPE_24__ {TYPE_2__ int_conn; TYPE_1__ api_dereg; } ;
typedef TYPE_3__ tBTA_GATTC_DATA ;
typedef int tBTA_GATTC_CLCB ;
typedef int tBTA_GATTC_CB ;
struct TYPE_25__ {int event; int layer_specific; } ;
typedef TYPE_4__ BT_HDR ;
typedef int BOOLEAN ;


 int APPL_TRACE_DEBUG (char*,int ) ;
 int BTA_GATTC_INT_CONN_EVT ;
 int BTA_GATTC_INT_DISCONN_EVT ;

 int TRUE ;
 int bta_gattc_broadcast (int *,TYPE_3__*) ;
 int bta_gattc_cb ;
 int * bta_gattc_cl_get_regcb (int ) ;
 int bta_gattc_conncback (int *,TYPE_3__*) ;
 int bta_gattc_deregister (int *,int *) ;
 int bta_gattc_disable (int *) ;
 int bta_gattc_disconncback (int *,TYPE_3__*) ;
 int * bta_gattc_find_clcb_by_conn_id (int ) ;
 int * bta_gattc_find_int_conn_clcb (TYPE_3__*) ;
 int * bta_gattc_find_int_disconn_clcb (TYPE_3__*) ;
 int bta_gattc_listen (int *,TYPE_3__*) ;
 int bta_gattc_process_api_cache_assoc (int *,TYPE_3__*) ;
 int bta_gattc_process_api_cache_clean (int *,TYPE_3__*) ;
 int bta_gattc_process_api_cache_get_addr_list (int *,TYPE_3__*) ;
 int bta_gattc_process_api_open (int *,TYPE_3__*) ;
 int bta_gattc_process_api_open_cancel (int *,TYPE_3__*) ;
 int bta_gattc_process_api_refresh (int *,TYPE_3__*) ;
 int bta_gattc_process_enc_cmpl (int *,TYPE_3__*) ;
 int bta_gattc_register (int *,TYPE_3__*) ;
 int bta_gattc_sm_execute (int *,int,TYPE_3__*) ;
 int bta_gattc_start_if (int *,TYPE_3__*) ;
 int gattc_evt_code (int) ;

BOOLEAN bta_gattc_hdl_event(BT_HDR *p_msg)
{
    tBTA_GATTC_CB *p_cb = &bta_gattc_cb;
    tBTA_GATTC_CLCB *p_clcb = ((void*)0);
    tBTA_GATTC_RCB *p_clreg;
    BOOLEAN rt = TRUE;

    APPL_TRACE_DEBUG("bta_gattc_hdl_event: Event [%s]\n", gattc_evt_code(p_msg->event));

    switch (p_msg->event) {
    case 134:
        bta_gattc_disable(p_cb);
        break;

    case 130:
        bta_gattc_register(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;

    case 128:
        bta_gattc_start_if(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;

    case 135:
        p_clreg = bta_gattc_cl_get_regcb(((tBTA_GATTC_DATA *)p_msg)->api_dereg.client_if);
        bta_gattc_deregister(p_cb, p_clreg);
        break;

    case 132:
        bta_gattc_process_api_open(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;

    case 136:
        bta_gattc_process_api_open_cancel(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;

    case 131:
        bta_gattc_process_api_refresh(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;
    case 139:
        bta_gattc_process_api_cache_assoc(p_cb, (tBTA_GATTC_DATA *)p_msg);
        break;
    case 137:
        bta_gattc_process_api_cache_get_addr_list(p_cb, (tBTA_GATTC_DATA *)p_msg);
        break;
    case 138:
        bta_gattc_process_api_cache_clean(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;

    case 133:
        bta_gattc_listen(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;
    case 140:
        bta_gattc_broadcast(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;


    case 129:
        bta_gattc_process_enc_cmpl(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;

    default:
        if (p_msg->event == BTA_GATTC_INT_CONN_EVT) {
            p_clcb = bta_gattc_find_int_conn_clcb((tBTA_GATTC_DATA *) p_msg);
            p_clreg = bta_gattc_cl_get_regcb(((tBTA_GATTC_DATA *)p_msg)->int_conn.client_if);
            if (p_clreg != ((void*)0)){
                bta_gattc_conncback(p_clreg, (tBTA_GATTC_DATA *) p_msg);
            }

        } else if (p_msg->event == BTA_GATTC_INT_DISCONN_EVT) {
            p_clreg = bta_gattc_cl_get_regcb(((tBTA_GATTC_DATA *)p_msg)->int_conn.client_if);
            if (p_clreg != ((void*)0)){
                bta_gattc_disconncback(p_clreg, (tBTA_GATTC_DATA *) p_msg);
            }
            p_clcb = bta_gattc_find_int_disconn_clcb((tBTA_GATTC_DATA *) p_msg);
        } else {
            p_clcb = bta_gattc_find_clcb_by_conn_id(p_msg->layer_specific);
        }

        if (p_clcb != ((void*)0)) {
            rt = bta_gattc_sm_execute(p_clcb, p_msg->event, (tBTA_GATTC_DATA *) p_msg);
        } else {
            APPL_TRACE_DEBUG("Ignore unknown conn ID: %d\n", p_msg->layer_specific);
        }

        break;
    }


    return rt;
}
