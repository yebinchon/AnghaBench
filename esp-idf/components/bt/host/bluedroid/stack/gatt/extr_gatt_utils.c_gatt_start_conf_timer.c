
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ param; } ;
struct TYPE_4__ {TYPE_3__ conf_timer_ent; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef scalar_t__ TIMER_PARAM_TYPE ;


 int BTU_TTYPE_ATT_WAIT_FOR_RSP ;
 int GATT_WAIT_FOR_RSP_TOUT ;
 int btu_start_timer (TYPE_3__*,int ,int ) ;

void gatt_start_conf_timer(tGATT_TCB *p_tcb)
{
    p_tcb->conf_timer_ent.param = (TIMER_PARAM_TYPE)p_tcb;
    btu_start_timer (&p_tcb->conf_timer_ent, BTU_TTYPE_ATT_WAIT_FOR_RSP,
                     GATT_WAIT_FOR_RSP_TOUT);
}
