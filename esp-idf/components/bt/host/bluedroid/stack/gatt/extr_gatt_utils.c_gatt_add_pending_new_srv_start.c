
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * p_new_srv_start; } ;
typedef TYPE_1__ tGATTS_PENDING_NEW_SRV_START ;
typedef int tGATTS_HNDL_RANGE ;
typedef int UINT16 ;
struct TYPE_6__ {int pending_new_srv_start_q; } ;


 int FIXED_QUEUE_MAX_TIMEOUT ;
 int GATT_TRACE_DEBUG (char*) ;
 int fixed_queue_enqueue (int ,TYPE_1__*,int ) ;
 TYPE_2__ gatt_cb ;
 scalar_t__ osi_malloc (int ) ;

tGATTS_PENDING_NEW_SRV_START *gatt_add_pending_new_srv_start(tGATTS_HNDL_RANGE *p_new_srv_start)
{
    tGATTS_PENDING_NEW_SRV_START *p_buf;

    GATT_TRACE_DEBUG ("gatt_add_pending_new_srv_start");
    if ((p_buf = (tGATTS_PENDING_NEW_SRV_START *)osi_malloc((UINT16)sizeof(tGATTS_PENDING_NEW_SRV_START))) != ((void*)0)) {
        GATT_TRACE_DEBUG ("enqueue a new pending new srv start");
        p_buf->p_new_srv_start = p_new_srv_start;
    fixed_queue_enqueue(gatt_cb.pending_new_srv_start_q, p_buf, FIXED_QUEUE_MAX_TIMEOUT);
    }
    return p_buf;
}
