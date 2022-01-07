
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* p_param; } ;
typedef TYPE_2__ tBTM_BLE_CONN_REQ ;
struct TYPE_5__ {int conn_pending_q; } ;
struct TYPE_7__ {TYPE_1__ ble_ctr_cb; } ;


 int FIXED_QUEUE_MAX_TIMEOUT ;
 TYPE_4__ btm_cb ;
 int fixed_queue_enqueue (int ,TYPE_2__*,int ) ;
 scalar_t__ osi_malloc (int) ;

void btm_ble_enqueue_direct_conn_req(void *p_param)
{
    tBTM_BLE_CONN_REQ *p = (tBTM_BLE_CONN_REQ *)osi_malloc(sizeof(tBTM_BLE_CONN_REQ));

    p->p_param = p_param;

    fixed_queue_enqueue(btm_cb.ble_ctr_cb.conn_pending_q, p, FIXED_QUEUE_MAX_TIMEOUT);
}
