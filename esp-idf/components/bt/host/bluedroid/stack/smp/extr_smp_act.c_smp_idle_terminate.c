
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tSMP_INT_DATA ;
struct TYPE_4__ {int flags; int status; } ;
typedef TYPE_1__ tSMP_CB ;


 int SMP_FAIL ;
 int SMP_PAIR_FLAGS_WE_STARTED_DD ;
 int SMP_TRACE_DEBUG (char*) ;
 int smp_proc_pairing_cmpl (TYPE_1__*) ;

void smp_idle_terminate(tSMP_CB *p_cb, tSMP_INT_DATA *p_data)
{
    if (p_cb->flags & SMP_PAIR_FLAGS_WE_STARTED_DD) {
        SMP_TRACE_DEBUG("Pairing terminated at IDLE state.\n");
        p_cb->status = SMP_FAIL;
        smp_proc_pairing_cmpl(p_cb);
    }
}
