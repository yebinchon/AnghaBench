
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int lcpu; } ;
typedef TYPE_1__ cpu_data_t ;
struct TYPE_5__ {int (* SetDeadline ) (int *,int ) ;} ;


 TYPE_2__* pmDispatch ;
 scalar_t__ pmInitDone ;
 int stub1 (int *,int ) ;

uint64_t
pmCPUSetDeadline(cpu_data_t *cpu, uint64_t deadline)
{
   if (pmInitDone
 && pmDispatch != ((void*)0)
 && pmDispatch->SetDeadline != ((void*)0))
 deadline = (*pmDispatch->SetDeadline)(&cpu->lcpu, deadline);

    return(deadline);
}
