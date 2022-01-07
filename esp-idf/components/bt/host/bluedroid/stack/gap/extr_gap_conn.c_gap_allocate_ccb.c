
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ con_state; int rem_mtu_size; scalar_t__ gap_handle; void* rx_queue; void* tx_queue; } ;
typedef TYPE_2__ tGAP_CCB ;
typedef scalar_t__ UINT16 ;
struct TYPE_6__ {TYPE_2__* ccb_pool; } ;
struct TYPE_8__ {TYPE_1__ conn; } ;


 scalar_t__ GAP_CCB_STATE_IDLE ;
 scalar_t__ GAP_MAX_CONNECTIONS ;
 int L2CAP_MTU_SIZE ;
 int QUEUE_SIZE_MAX ;
 void* fixed_queue_new (int ) ;
 TYPE_4__ gap_cb ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static tGAP_CCB *gap_allocate_ccb (void)
{
    UINT16 xx;
    tGAP_CCB *p_ccb;


    for (xx = 0, p_ccb = gap_cb.conn.ccb_pool; xx < GAP_MAX_CONNECTIONS; xx++, p_ccb++) {
        if (p_ccb->con_state == GAP_CCB_STATE_IDLE) {
            memset (p_ccb, 0, sizeof (tGAP_CCB));
            p_ccb->tx_queue = fixed_queue_new(QUEUE_SIZE_MAX);
            p_ccb->rx_queue = fixed_queue_new(QUEUE_SIZE_MAX);

            p_ccb->gap_handle = xx;
            p_ccb->rem_mtu_size = L2CAP_MTU_SIZE;

            return (p_ccb);
        }
    }


    return (((void*)0));
}
