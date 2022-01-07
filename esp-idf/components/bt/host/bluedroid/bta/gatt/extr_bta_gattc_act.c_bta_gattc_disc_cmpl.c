
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int event; } ;
struct TYPE_13__ {TYPE_2__ hdr; } ;
typedef TYPE_3__ tBTA_GATTC_DATA ;
struct TYPE_14__ {scalar_t__ status; scalar_t__ auto_update; int bda; int bta_conn_id; TYPE_3__* p_q_cmd; TYPE_1__* p_srcb; int disc_active; } ;
typedef TYPE_4__ tBTA_GATTC_CLCB ;
struct TYPE_11__ {int server_bda; TYPE_3__* p_srvc_list; int * p_srvc_cache; int state; } ;


 int APPL_TRACE_DEBUG (char*,int ,scalar_t__) ;
 scalar_t__ BTA_GATTC_DISC_WAITING ;
 int BTA_GATTC_INT_DISCOVER_EVT ;
 int BTA_GATTC_SERV_IDLE ;
 int BT_TRANSPORT_LE ;
 int FALSE ;
 scalar_t__ GATT_SUCCESS ;
 int UNUSED (TYPE_3__*) ;
 int bta_gattc_cache_reset (int ) ;
 int bta_gattc_register_service_change_notify (int ,int ) ;
 int bta_gattc_sm_execute (TYPE_4__*,int ,TYPE_3__*) ;
 int * l2cu_find_lcb_by_bd_addr (int ,int ) ;
 int list_free (int *) ;
 int osi_free (TYPE_3__*) ;

void bta_gattc_disc_cmpl(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATTC_DATA *p_q_cmd = p_clcb->p_q_cmd;
    UNUSED(p_data);

    APPL_TRACE_DEBUG("bta_gattc_disc_cmpl conn_id=%d, status = %d", p_clcb->bta_conn_id, p_clcb->status);

    p_clcb->p_srcb->state = BTA_GATTC_SERV_IDLE;
    p_clcb->disc_active = FALSE;

    if (p_clcb->status != GATT_SUCCESS) {

        if (p_clcb->p_srcb && p_clcb->p_srcb->p_srvc_cache) {
            list_free(p_clcb->p_srcb->p_srvc_cache);
            p_clcb->p_srcb->p_srvc_cache = ((void*)0);
        }


        bta_gattc_cache_reset(p_clcb->p_srcb->server_bda);

    }
    if (p_clcb->p_srcb && p_clcb->p_srcb->p_srvc_list) {

        osi_free(p_clcb->p_srcb->p_srvc_list);
        p_clcb->p_srcb->p_srvc_list = ((void*)0);

    }

    if (p_clcb->auto_update == BTA_GATTC_DISC_WAITING) {

        bta_gattc_sm_execute(p_clcb, BTA_GATTC_INT_DISCOVER_EVT, ((void*)0));
    }

    else if (p_q_cmd != ((void*)0)) {
        p_clcb->p_q_cmd = ((void*)0);

        if (l2cu_find_lcb_by_bd_addr(p_clcb->p_srcb->server_bda, BT_TRANSPORT_LE) != ((void*)0)) {
            bta_gattc_sm_execute(p_clcb, p_q_cmd->hdr.event, p_q_cmd);
        }




        if (p_q_cmd != p_clcb->p_q_cmd) {
            osi_free(p_q_cmd);
            p_q_cmd = ((void*)0);
        }
    }


    bta_gattc_register_service_change_notify(p_clcb->bta_conn_id, p_clcb->bda);

}
