
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rsp_timer_ent; scalar_t__ in_use; } ;
typedef TYPE_1__ tGATT_CLCB ;


 int btu_free_timer (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void gatt_clcb_dealloc (tGATT_CLCB *p_clcb)
{
    if (p_clcb && p_clcb->in_use) {
        btu_free_timer(&p_clcb->rsp_timer_ent);
        memset(p_clcb, 0, sizeof(tGATT_CLCB));
    }
}
