
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_dtrace_lazy_dofs; } ;
typedef TYPE_1__ proc_t ;



__attribute__((used)) static int
dtrace_lazy_dofs_proc_iterate_filter(proc_t *p, void* ignored)
{
#pragma unused(ignored)



 return p->p_dtrace_lazy_dofs != ((void*)0);
}
