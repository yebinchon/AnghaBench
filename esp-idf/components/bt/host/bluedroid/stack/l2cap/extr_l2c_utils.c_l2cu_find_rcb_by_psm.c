
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ psm; scalar_t__ in_use; } ;
typedef TYPE_1__ tL2C_RCB ;
typedef scalar_t__ UINT16 ;
struct TYPE_5__ {TYPE_1__* rcb_pool; } ;


 scalar_t__ MAX_L2CAP_CLIENTS ;
 TYPE_3__ l2cb ;

tL2C_RCB *l2cu_find_rcb_by_psm (UINT16 psm)
{
    tL2C_RCB *p_rcb = &l2cb.rcb_pool[0];
    UINT16 xx;

    for (xx = 0; xx < MAX_L2CAP_CLIENTS; xx++, p_rcb++) {
        if ((p_rcb->in_use) && (p_rcb->psm == psm)) {
            return (p_rcb);
        }
    }


    return (((void*)0));
}
