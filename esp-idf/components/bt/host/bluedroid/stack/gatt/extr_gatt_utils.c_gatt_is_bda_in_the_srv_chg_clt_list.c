
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bda; } ;
typedef TYPE_1__ tGATTS_SRV_CHG ;
typedef int list_t ;
typedef int list_node_t ;
struct TYPE_5__ {int srv_chg_clt_q; } ;
typedef int * BD_ADDR ;


 int BD_ADDR_LEN ;
 int GATT_TRACE_DEBUG (char*,...) ;
 int * fixed_queue_get_list (int ) ;
 scalar_t__ fixed_queue_is_empty (int ) ;
 TYPE_3__ gatt_cb ;
 int * list_begin (int *) ;
 int const* list_end (int *) ;
 int * list_next (int const*) ;
 scalar_t__ list_node (int const*) ;
 int memcmp (int *,int ,int ) ;

tGATTS_SRV_CHG *gatt_is_bda_in_the_srv_chg_clt_list (BD_ADDR bda)
{
    tGATTS_SRV_CHG *p_buf = ((void*)0);

    GATT_TRACE_DEBUG("gatt_is_bda_in_the_srv_chg_clt_list :%02x-%02x-%02x-%02x-%02x-%02x",
                     bda[0], bda[1], bda[2], bda[3], bda[4], bda[5]);

    if (fixed_queue_is_empty(gatt_cb.srv_chg_clt_q)) {
        return ((void*)0);
 }

    list_t *list = fixed_queue_get_list(gatt_cb.srv_chg_clt_q);
    for (const list_node_t *node = list_begin(list); node != list_end(list);
         node = list_next(node)) {
        p_buf = (tGATTS_SRV_CHG *)list_node(node);
        if (!memcmp( bda, p_buf->bda, BD_ADDR_LEN)) {
            GATT_TRACE_DEBUG("bda is in the srv chg clt list");
            break;
        }
    }

    return p_buf;
}
