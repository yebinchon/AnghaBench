
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int svc_buffer; } ;
struct TYPE_8__ {TYPE_1__ svc_db; int in_use; } ;
typedef TYPE_2__ tGATT_HDL_LIST_ELEM ;
struct TYPE_9__ {TYPE_2__* hdl_list; } ;
typedef TYPE_3__ tGATT_CB ;
typedef size_t UINT8 ;


 size_t GATT_MAX_SR_PROFILES ;
 int QUEUE_SIZE_MAX ;
 int TRUE ;
 int fixed_queue_new (int ) ;
 TYPE_3__ gatt_cb ;
 int memset (TYPE_2__*,int ,int) ;

tGATT_HDL_LIST_ELEM *gatt_alloc_hdl_buffer(void)
{
    UINT8 i;
    tGATT_CB *p_cb = &gatt_cb;
    tGATT_HDL_LIST_ELEM *p_elem = &p_cb->hdl_list[0];

    for (i = 0; i < GATT_MAX_SR_PROFILES; i++, p_elem ++) {
        if (!p_cb->hdl_list[i].in_use) {
            memset(p_elem, 0, sizeof(tGATT_HDL_LIST_ELEM));
            p_elem->in_use = TRUE;
            p_elem->svc_db.svc_buffer = fixed_queue_new(QUEUE_SIZE_MAX);
            return p_elem;
        }
    }

    return ((void*)0);
}
