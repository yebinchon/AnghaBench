
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int PROC_RETURNED ;
 int dtrace_lazy_dofs_process (int *) ;

__attribute__((used)) static int
dtrace_lazy_dofs_proc_iterate_doit(proc_t *p, void* ignored)
{
#pragma unused(ignored)

 dtrace_lazy_dofs_process(p);

 return PROC_RETURNED;
}
