
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_lcb; } ;
typedef TYPE_2__ tL2C_CCB ;
struct TYPE_5__ {int ucd_out_sec_pending_q; } ;


 int FIXED_QUEUE_MAX_TIMEOUT ;
 int fixed_queue_enqueue (int ,void*,int ) ;
 int l2cu_check_channel_congestion (TYPE_2__*) ;

void l2c_ucd_enqueue_pending_out_sec_q(tL2C_CCB *p_ccb, void *p_data)
{
    fixed_queue_enqueue(p_ccb->p_lcb->ucd_out_sec_pending_q, p_data, FIXED_QUEUE_MAX_TIMEOUT);
    l2cu_check_channel_congestion (p_ccb);
}
