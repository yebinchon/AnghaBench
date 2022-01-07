
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int event; } ;
struct TYPE_16__ {TYPE_2__ hdr; } ;
typedef TYPE_5__ tBTA_GATTC_DATA ;
struct TYPE_17__ {TYPE_4__* p_rcb; int bta_conn_id; void* is_full; int p_cmd_list; TYPE_1__* p_srcb; } ;
typedef TYPE_6__ tBTA_GATTC_CLCB ;
struct TYPE_14__ {void* is_full; int conn_id; } ;
struct TYPE_18__ {TYPE_3__ queue_full; int status; int member_0; } ;
typedef TYPE_7__ tBTA_GATTC ;
typedef int list_node_t ;
struct TYPE_15__ {int (* p_cback ) (int ,TYPE_7__*) ;} ;
struct TYPE_12__ {int server_bda; } ;


 int BTA_GATTC_QUEUE_FULL_EVT ;
 int BT_TRANSPORT_LE ;
 void* FALSE ;
 int GATT_SUCCESS ;
 scalar_t__ bta_gattc_sm_execute (TYPE_6__*,int ,TYPE_5__*) ;
 int * l2cu_find_lcb_by_bd_addr (int ,int ) ;
 int * list_begin (int ) ;
 int list_is_empty (int ) ;
 scalar_t__ list_node (int *) ;
 int list_remove (int ,void*) ;
 int stub1 (int ,TYPE_7__*) ;

__attribute__((used)) static void bta_gattc_pop_command_to_send(tBTA_GATTC_CLCB *p_clcb)
{
    if (!list_is_empty(p_clcb->p_cmd_list)) {
        list_node_t *node = list_begin(p_clcb->p_cmd_list);
        tBTA_GATTC_DATA *p_data = (tBTA_GATTC_DATA *)list_node(node);
        if (p_data != ((void*)0)) {

            if (l2cu_find_lcb_by_bd_addr(p_clcb->p_srcb->server_bda, BT_TRANSPORT_LE) != ((void*)0)) {

                if(bta_gattc_sm_execute(p_clcb, p_data->hdr.event, p_data)) {
                    list_remove(p_clcb->p_cmd_list, (void *)p_data);
                }

                if (p_clcb->is_full) {
                    tBTA_GATTC cb_data = {0};
                    p_clcb->is_full = FALSE;
                    cb_data.status = GATT_SUCCESS;
                    cb_data.queue_full.conn_id = p_clcb->bta_conn_id;
                    cb_data.queue_full.is_full = FALSE;
                    if (p_clcb->p_rcb->p_cback != ((void*)0)) {
                        ( *p_clcb->p_rcb->p_cback)(BTA_GATTC_QUEUE_FULL_EVT, (tBTA_GATTC *)&cb_data);
                    }
                }
            }
        }
    }
}
