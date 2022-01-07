
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lcpu; } ;
typedef TYPE_1__ cpu_data_t ;
struct TYPE_5__ {int (* Deadline ) (int *) ;} ;


 TYPE_2__* pmDispatch ;
 scalar_t__ pmInitDone ;
 int stub1 (int *) ;

void
pmCPUDeadline(cpu_data_t *cpu)
{
    if (pmInitDone
 && pmDispatch != ((void*)0)
 && pmDispatch->Deadline != ((void*)0))
 (*pmDispatch->Deadline)(&cpu->lcpu);
}
