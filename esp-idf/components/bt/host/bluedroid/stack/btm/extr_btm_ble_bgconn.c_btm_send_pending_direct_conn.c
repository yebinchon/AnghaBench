
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tL2C_LCB ;
struct TYPE_5__ {scalar_t__ p_param; } ;
typedef TYPE_2__ tBTM_BLE_CONN_REQ ;
struct TYPE_4__ {int conn_pending_q; } ;
struct TYPE_6__ {TYPE_1__ ble_ctr_cb; } ;
typedef int BOOLEAN ;


 int FALSE ;
 TYPE_3__ btm_cb ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 int l2cble_init_direct_conn (int *) ;
 int osi_free (void*) ;

BOOLEAN btm_send_pending_direct_conn(void)
{
    tBTM_BLE_CONN_REQ *p_req;
    BOOLEAN rt = FALSE;

    p_req = (tBTM_BLE_CONN_REQ*)fixed_queue_dequeue(btm_cb.ble_ctr_cb.conn_pending_q, 0);
    if (p_req != ((void*)0)) {
        rt = l2cble_init_direct_conn((tL2C_LCB *)(p_req->p_param));

        osi_free((void *)p_req);
    }

    return rt;
}
