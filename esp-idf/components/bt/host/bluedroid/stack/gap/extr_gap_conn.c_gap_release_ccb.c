
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ psm; scalar_t__ con_state; int * tx_queue; int * rx_queue; scalar_t__ rx_queue_size; int service_id; } ;
typedef TYPE_2__ tGAP_CCB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_5__ {TYPE_2__* ccb_pool; } ;
struct TYPE_7__ {TYPE_1__ conn; } ;


 int BTM_SecClrService (int ) ;
 scalar_t__ GAP_CCB_STATE_IDLE ;
 scalar_t__ GAP_MAX_CONNECTIONS ;
 int L2CA_DEREGISTER (scalar_t__) ;
 int fixed_queue_dequeue (int *,int ) ;
 int fixed_queue_free (int *,int *) ;
 int fixed_queue_is_empty (int *) ;
 TYPE_4__ gap_cb ;
 int osi_free (int ) ;

__attribute__((used)) static void gap_release_ccb (tGAP_CCB *p_ccb)
{
    UINT16 xx;
    UINT16 psm = p_ccb->psm;
    UINT8 service_id = p_ccb->service_id;


    p_ccb->rx_queue_size = 0;

    while (!fixed_queue_is_empty(p_ccb->rx_queue)) {
        osi_free(fixed_queue_dequeue(p_ccb->rx_queue, 0));
 }
    fixed_queue_free(p_ccb->rx_queue, ((void*)0));
    p_ccb->rx_queue = ((void*)0);

    while (!fixed_queue_is_empty(p_ccb->tx_queue)) {
        osi_free(fixed_queue_dequeue(p_ccb->tx_queue, 0));
 }
    fixed_queue_free(p_ccb->tx_queue, ((void*)0));
    p_ccb->tx_queue = ((void*)0);

    p_ccb->con_state = GAP_CCB_STATE_IDLE;


    for (xx = 0, p_ccb = gap_cb.conn.ccb_pool; xx < GAP_MAX_CONNECTIONS; xx++, p_ccb++) {
        if ((p_ccb->con_state != GAP_CCB_STATE_IDLE) && (p_ccb->psm == psm)) {
            return;
        }
    }


    BTM_SecClrService(service_id);

    L2CA_DEREGISTER (psm);
}
