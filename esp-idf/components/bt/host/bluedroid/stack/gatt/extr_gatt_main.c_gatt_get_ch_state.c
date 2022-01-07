
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ch_state; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef int tGATT_CH_STATE ;


 int GATT_CH_CLOSE ;
 int GATT_TRACE_DEBUG (char*,int ) ;

tGATT_CH_STATE gatt_get_ch_state(tGATT_TCB *p_tcb)
{
    tGATT_CH_STATE ch_state = GATT_CH_CLOSE;
    if (p_tcb) {
        GATT_TRACE_DEBUG ("gatt_get_ch_state: ch_state=%d", p_tcb->ch_state);
        ch_state = p_tcb->ch_state;
    }
    return ch_state;
}
