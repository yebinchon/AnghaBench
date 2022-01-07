
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int svc_buffer; } ;
struct TYPE_6__ {TYPE_1__ svc_db; } ;
typedef TYPE_2__ tGATT_HDL_LIST_ELEM ;


 int fixed_queue_dequeue (int ,int ) ;
 int fixed_queue_free (int ,int *) ;
 int fixed_queue_is_empty (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int osi_free (int ) ;

void gatt_free_hdl_buffer(tGATT_HDL_LIST_ELEM *p)
{

    if (p) {
        while (!fixed_queue_is_empty(p->svc_db.svc_buffer)) {
            osi_free(fixed_queue_dequeue(p->svc_db.svc_buffer, 0));
  }
        fixed_queue_free(p->svc_db.svc_buffer, ((void*)0));
        memset(p, 0, sizeof(tGATT_HDL_LIST_ELEM));
    }
}
