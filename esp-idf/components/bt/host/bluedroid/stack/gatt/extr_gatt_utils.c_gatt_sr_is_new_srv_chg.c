
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_new_srv_start; } ;
typedef TYPE_1__ tGATTS_PENDING_NEW_SRV_START ;
struct TYPE_6__ {scalar_t__ svc_inst; int svc_uuid; int app_uuid128; } ;
typedef TYPE_2__ tGATTS_HNDL_RANGE ;
typedef int tBT_UUID ;
typedef int list_t ;
typedef int list_node_t ;
typedef scalar_t__ UINT16 ;
struct TYPE_7__ {int pending_new_srv_start_q; } ;


 int GATT_TRACE_DEBUG (char*) ;
 int * fixed_queue_get_list (int ) ;
 scalar_t__ fixed_queue_is_empty (int ) ;
 TYPE_4__ gatt_cb ;
 scalar_t__ gatt_uuid_compare (int ,int ) ;
 int * list_begin (int *) ;
 int const* list_end (int *) ;
 int * list_next (int const*) ;
 scalar_t__ list_node (int const*) ;

tGATTS_PENDING_NEW_SRV_START *gatt_sr_is_new_srv_chg(tBT_UUID *p_app_uuid128, tBT_UUID *p_svc_uuid, UINT16 svc_inst)
{
    tGATTS_PENDING_NEW_SRV_START *p_buf = ((void*)0);

    if (fixed_queue_is_empty(gatt_cb.pending_new_srv_start_q)) {
        return ((void*)0);
 }

    list_t *list = fixed_queue_get_list(gatt_cb.pending_new_srv_start_q);
    for (const list_node_t *node = list_begin(list); node != list_end(list);
         node = list_next(node)) {
        p_buf = (tGATTS_PENDING_NEW_SRV_START *)list_node(node);
        tGATTS_HNDL_RANGE *p = p_buf->p_new_srv_start;
        if (gatt_uuid_compare(*p_app_uuid128, p->app_uuid128)
            && gatt_uuid_compare (*p_svc_uuid, p->svc_uuid)
            && (svc_inst == p->svc_inst)) {
            GATT_TRACE_DEBUG("gatt_sr_is_new_srv_chg: Yes");
            break;
        }
    }

    return p_buf;
}
