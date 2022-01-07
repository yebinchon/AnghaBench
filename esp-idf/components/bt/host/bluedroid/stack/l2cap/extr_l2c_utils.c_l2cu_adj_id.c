
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int UINT8 ;


 int L2CAP_ADJ_ZERO_ID ;

void l2cu_adj_id (tL2C_LCB *p_lcb, UINT8 adj_mask)
{
    if ((adj_mask & L2CAP_ADJ_ZERO_ID) && !p_lcb->id) {
        p_lcb->id++;
    }
}
