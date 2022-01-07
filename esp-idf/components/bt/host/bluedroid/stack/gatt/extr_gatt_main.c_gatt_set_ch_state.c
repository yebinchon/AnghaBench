
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ch_state; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef int tGATT_CH_STATE ;


 int GATT_TRACE_DEBUG (char*,int ,int ) ;

void gatt_set_ch_state(tGATT_TCB *p_tcb, tGATT_CH_STATE ch_state)
{
    if (p_tcb) {
        GATT_TRACE_DEBUG ("gatt_set_ch_state: old=%d new=%d", p_tcb->ch_state, ch_state);
        p_tcb->ch_state = ch_state;
    }
}
