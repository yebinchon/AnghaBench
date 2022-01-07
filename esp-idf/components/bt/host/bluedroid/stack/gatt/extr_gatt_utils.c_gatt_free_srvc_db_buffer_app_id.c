
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * p_free_mem; int p_attr_list; scalar_t__ mem_free; int * svc_buffer; } ;
struct TYPE_6__ {int app_uuid128; } ;
struct TYPE_8__ {TYPE_2__ svc_db; TYPE_1__ asgn_range; } ;
typedef TYPE_3__ tGATT_HDL_LIST_ELEM ;
typedef int tBT_UUID ;
typedef scalar_t__ UINT8 ;
struct TYPE_9__ {TYPE_3__* hdl_list; } ;


 scalar_t__ GATT_MAX_SR_PROFILES ;
 int fixed_queue_dequeue (int *,int ) ;
 int fixed_queue_free (int *,int *) ;
 int fixed_queue_is_empty (int *) ;
 TYPE_5__ gatt_cb ;
 int gatt_free_attr_value_buffer (TYPE_3__*) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int osi_free (int ) ;

void gatt_free_srvc_db_buffer_app_id(tBT_UUID *p_app_id)
{
    tGATT_HDL_LIST_ELEM *p_elem = &gatt_cb.hdl_list[0];
    UINT8 i;

    for (i = 0; i < GATT_MAX_SR_PROFILES; i ++, p_elem ++) {
        if (memcmp(p_app_id, &p_elem->asgn_range.app_uuid128, sizeof(tBT_UUID)) == 0) {
            gatt_free_attr_value_buffer(p_elem);
            while (!fixed_queue_is_empty(p_elem->svc_db.svc_buffer)) {
                osi_free(fixed_queue_dequeue(p_elem->svc_db.svc_buffer, 0));
   }
            fixed_queue_free(p_elem->svc_db.svc_buffer, ((void*)0));
            p_elem->svc_db.svc_buffer = ((void*)0);

            p_elem->svc_db.mem_free = 0;
            p_elem->svc_db.p_attr_list = p_elem->svc_db.p_free_mem = ((void*)0);
        }
    }
}
