
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ p_dtrace_count; int * p_dtrace_helpers; } ;
typedef TYPE_1__ proc_t ;


 scalar_t__ DTRACE_LAZY_DOFS_DUPLICATED ;
 int dtrace_fasttrap_fork (TYPE_1__*,TYPE_1__*) ;
 int dtrace_helpers_fork (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ dtrace_lazy_dofs_duplicate (TYPE_1__*,TYPE_1__*) ;
 int dtrace_sprlock (TYPE_1__*) ;
 int dtrace_sprunlock (TYPE_1__*) ;
 int stub1 (TYPE_1__*,TYPE_1__*) ;

void
dtrace_proc_fork(proc_t *parent_proc, proc_t *child_proc, int spawn)
{




 if (!spawn) {






  dtrace_sprlock(parent_proc);






  if (parent_proc->p_dtrace_count > 0) {
   dtrace_fasttrap_fork(parent_proc, child_proc);
  }

  dtrace_sprunlock(parent_proc);
  if (dtrace_lazy_dofs_duplicate(parent_proc, child_proc) == DTRACE_LAZY_DOFS_DUPLICATED) {
   return;
  }
  if (parent_proc->p_dtrace_helpers != ((void*)0) && dtrace_helpers_fork) {
   (*dtrace_helpers_fork)(parent_proc, child_proc);
  }
 }
}
