
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sec_act; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef int tGATT_SEC_ACTION ;



void gatt_set_sec_act(tGATT_TCB *p_tcb, tGATT_SEC_ACTION sec_act)
{
    if (p_tcb) {
        p_tcb->sec_act = sec_act;
    }
}
