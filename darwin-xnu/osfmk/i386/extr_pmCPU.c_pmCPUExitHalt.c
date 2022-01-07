
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_2__ {int (* exitHalt ) (int ) ;} ;


 int KERN_INVALID_ARGUMENT ;
 int cpu_to_lcpu (int) ;
 TYPE_1__* pmDispatch ;
 scalar_t__ pmInitDone ;
 int stub1 (int ) ;

kern_return_t
pmCPUExitHalt(int cpu)
{
    kern_return_t rc = KERN_INVALID_ARGUMENT;

    if (pmInitDone
 && pmDispatch != ((void*)0)
 && pmDispatch->exitHalt != ((void*)0))
 rc = pmDispatch->exitHalt(cpu_to_lcpu(cpu));

    return(rc);
}
