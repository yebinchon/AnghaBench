
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prof_cyclic; scalar_t__ prof_kind; } ;
typedef TYPE_1__ profile_probe_t ;
typedef int dtrace_id_t ;
typedef int cyclic_id_list_t ;


 int ASSERT (int) ;
 scalar_t__ CYCLIC_NONE ;
 int MUTEX_HELD (int *) ;
 scalar_t__ PROF_TICK ;
 int cpu_lock ;
 int cyclic_remove_omni (int ) ;
 int cyclic_timer_remove (scalar_t__) ;

__attribute__((used)) static void
profile_disable(void *arg, dtrace_id_t id, void *parg)
{
 profile_probe_t *prof = parg;

 ASSERT(prof->prof_cyclic != CYCLIC_NONE);
 ASSERT(MUTEX_HELD(&cpu_lock));

#pragma unused(arg,id)
 if (prof->prof_kind == PROF_TICK) {
  cyclic_timer_remove(prof->prof_cyclic);
 } else {
  cyclic_remove_omni((cyclic_id_list_t)prof->prof_cyclic);
 }
 prof->prof_cyclic = CYCLIC_NONE;
}
