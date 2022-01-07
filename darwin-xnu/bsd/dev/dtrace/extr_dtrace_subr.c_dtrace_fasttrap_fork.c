
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int dtrace_fasttrap_fork_ptr (int *,int *) ;
 int stub1 (int *,int *) ;

void
dtrace_fasttrap_fork(proc_t *p, proc_t *cp)
{
 if (dtrace_fasttrap_fork_ptr) {
  (*dtrace_fasttrap_fork_ptr)(p, cp);
 }
}
