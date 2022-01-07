
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tGATT_VALUE ;
struct TYPE_3__ {int pending_ind_q; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef int UINT16 ;


 int FIXED_QUEUE_MAX_TIMEOUT ;
 int GATT_TRACE_DEBUG (char*) ;
 int fixed_queue_enqueue (int ,int *,int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ osi_malloc (int ) ;

tGATT_VALUE *gatt_add_pending_ind(tGATT_TCB *p_tcb, tGATT_VALUE *p_ind)
{
    tGATT_VALUE *p_buf;
    GATT_TRACE_DEBUG ("gatt_add_pending_ind");
    if ((p_buf = (tGATT_VALUE *)osi_malloc((UINT16)sizeof(tGATT_VALUE))) != ((void*)0)) {
        GATT_TRACE_DEBUG ("enqueue a pending indication");
        memcpy(p_buf, p_ind, sizeof(tGATT_VALUE));
    fixed_queue_enqueue(p_tcb->pending_ind_q, p_buf, FIXED_QUEUE_MAX_TIMEOUT);
    }
    return p_buf;
}
