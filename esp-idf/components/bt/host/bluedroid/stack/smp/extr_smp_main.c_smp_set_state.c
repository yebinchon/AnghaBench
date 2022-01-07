
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tSMP_STATE ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ SMP_STATE_MAX ;
 int SMP_TRACE_DEBUG (char*,scalar_t__,...) ;
 TYPE_1__ smp_cb ;
 int smp_get_state_name (scalar_t__) ;

void smp_set_state(tSMP_STATE state)
{
    if (state < SMP_STATE_MAX) {
        SMP_TRACE_DEBUG( "State change: %s(%d) ==> %s(%d)",
                         smp_get_state_name(smp_cb.state), smp_cb.state,
                         smp_get_state_name(state), state );
        smp_cb.state = state;
    } else {
        SMP_TRACE_DEBUG("smp_set_state invalid state =%d", state );
    }
}
