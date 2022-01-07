
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tL2C_LINK_STATE ;
struct TYPE_4__ {scalar_t__ link_state; scalar_t__ in_use; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef scalar_t__ UINT16 ;
struct TYPE_5__ {TYPE_1__* lcb_pool; } ;


 scalar_t__ MAX_L2CAP_LINKS ;
 TYPE_3__ l2cb ;

tL2C_LCB *l2cu_find_lcb_by_state (tL2C_LINK_STATE state)
{
    UINT16 i;
    tL2C_LCB *p_lcb = &l2cb.lcb_pool[0];

    for (i = 0; i < MAX_L2CAP_LINKS; i++, p_lcb++) {
        if ((p_lcb->in_use) && (p_lcb->link_state == state)) {
            return (p_lcb);
        }
    }


    return (((void*)0));
}
