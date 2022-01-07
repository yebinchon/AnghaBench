
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ p_dtrace_probes; int * p_dtrace_helpers; } ;
typedef TYPE_1__ proc_t ;


 int current_thread () ;
 int dtrace_fasttrap_exec_ptr (TYPE_1__*) ;
 int dtrace_helpers_cleanup (TYPE_1__*) ;
 int dtrace_lazy_dofs_destroy (TYPE_1__*) ;
 int dtrace_set_thread_predcache (int ,int ) ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

void
dtrace_proc_exec(proc_t *p)
{





 dtrace_set_thread_predcache(current_thread(), 0);
 dtrace_lazy_dofs_destroy(p);





 if (p->p_dtrace_helpers != ((void*)0) && dtrace_helpers_cleanup) {
  (*dtrace_helpers_cleanup)(p);
 }




 proc_lock(p);
 if (p->p_dtrace_probes && dtrace_fasttrap_exec_ptr) {
  (*dtrace_fasttrap_exec_ptr)(p);
 }
 proc_unlock(p);
}
