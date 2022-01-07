
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int state; } ;
struct TYPE_6__ {TYPE_2__ lcpu; } ;
typedef TYPE_1__ cpu_data_t ;
struct TYPE_8__ {int (* markCPURunning ) (TYPE_2__*) ;} ;


 int LCPU_RUN ;
 TYPE_1__* current_cpu_datap () ;
 TYPE_3__* pmDispatch ;
 scalar_t__ pmInitDone ;
 int stub1 (TYPE_2__*) ;

void
pmCPUMarkRunning(cpu_data_t *cpu)
{
    cpu_data_t *cpup = current_cpu_datap();

    if (pmInitDone
 && pmDispatch != ((void*)0)
 && pmDispatch->markCPURunning != ((void*)0))
 (*pmDispatch->markCPURunning)(&cpu->lcpu);
    else
 cpup->lcpu.state = LCPU_RUN;
}
