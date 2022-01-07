
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lcpu; } ;
typedef TYPE_1__ cpu_data_t ;
typedef int boolean_t ;
struct TYPE_5__ {int (* exitIdle ) (int *) ;} ;


 int TRUE ;
 TYPE_2__* pmDispatch ;
 scalar_t__ pmInitDone ;
 int stub1 (int *) ;

boolean_t
pmCPUExitIdle(cpu_data_t *cpu)
{
    boolean_t do_ipi;

    if (pmInitDone
 && pmDispatch != ((void*)0)
 && pmDispatch->exitIdle != ((void*)0))
 do_ipi = (*pmDispatch->exitIdle)(&cpu->lcpu);
    else
 do_ipi = TRUE;

    return(do_ipi);
}
