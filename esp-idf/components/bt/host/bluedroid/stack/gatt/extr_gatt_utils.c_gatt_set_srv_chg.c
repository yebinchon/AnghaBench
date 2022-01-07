
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int srv_chg; } ;
typedef TYPE_2__ tGATTS_SRV_CHG_REQ ;
struct TYPE_9__ {scalar_t__ srv_changed; } ;
typedef TYPE_3__ tGATTS_SRV_CHG ;
typedef int list_t ;
typedef int list_node_t ;
struct TYPE_7__ {int (* p_srv_chg_callback ) (int ,TYPE_2__*,int *) ;} ;
struct TYPE_10__ {TYPE_1__ cb_info; int srv_chg_clt_q; } ;


 int GATTS_SRV_CHG_CMD_UPDATE_CLIENT ;
 int GATT_TRACE_DEBUG (char*) ;
 scalar_t__ TRUE ;
 int * fixed_queue_get_list (int ) ;
 scalar_t__ fixed_queue_is_empty (int ) ;
 TYPE_6__ gatt_cb ;
 int * list_begin (int *) ;
 int const* list_end (int *) ;
 int * list_next (int const*) ;
 scalar_t__ list_node (int const*) ;
 int memcpy (int *,TYPE_3__*,int) ;
 int stub1 (int ,TYPE_2__*,int *) ;

void gatt_set_srv_chg(void)
{
    GATT_TRACE_DEBUG ("gatt_set_srv_chg");

    if (fixed_queue_is_empty(gatt_cb.srv_chg_clt_q)) {
        return;
 }

    list_t *list = fixed_queue_get_list(gatt_cb.srv_chg_clt_q);
    for (const list_node_t *node = list_begin(list); node != list_end(list);
         node = list_next(node)) {
        GATT_TRACE_DEBUG ("found a srv_chg clt");

        tGATTS_SRV_CHG *p_buf = (tGATTS_SRV_CHG *)list_node(node);
        if (!p_buf->srv_changed) {
            GATT_TRACE_DEBUG("set srv_changed to TRUE");
            p_buf->srv_changed = TRUE;
            tGATTS_SRV_CHG_REQ req;
            memcpy(&req.srv_chg, p_buf, sizeof(tGATTS_SRV_CHG));
            if (gatt_cb.cb_info.p_srv_chg_callback) {
                (*gatt_cb.cb_info.p_srv_chg_callback)(GATTS_SRV_CHG_CMD_UPDATE_CLIENT,&req, ((void*)0));
   }
        }
    }
}
