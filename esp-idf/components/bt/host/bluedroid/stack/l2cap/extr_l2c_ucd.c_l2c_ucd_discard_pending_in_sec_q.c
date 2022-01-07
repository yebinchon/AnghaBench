
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p_lcb; } ;
typedef TYPE_2__ tL2C_CCB ;
struct TYPE_4__ {int ucd_in_sec_pending_q; } ;
typedef int BT_HDR ;


 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 int osi_free (int *) ;

void l2c_ucd_discard_pending_in_sec_q(tL2C_CCB *p_ccb)
{
    BT_HDR *p_buf = (BT_HDR*)fixed_queue_dequeue(p_ccb->p_lcb->ucd_in_sec_pending_q, 0);

    if (p_buf) {
        osi_free (p_buf);
    }
}
