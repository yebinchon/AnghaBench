
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {int (* pmActiveRTThreads ) (int ) ;} ;


 TYPE_1__* pmDispatch ;
 int pmInitDone ;
 int stub1 (int ) ;

void
active_rt_threads(boolean_t active)
{
    if (!pmInitDone
 || pmDispatch == ((void*)0)
 || pmDispatch->pmActiveRTThreads == ((void*)0))
 return;

    pmDispatch->pmActiveRTThreads(active);
}
