
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pmCPUStateInit ) () ;} ;


 scalar_t__ FALSE ;
 scalar_t__ earlyTopology ;
 TYPE_1__* pmDispatch ;
 int pmInitDone ;
 int stub1 () ;

__attribute__((used)) static void
pmInitComplete(void)
{
    if (earlyTopology
 && pmDispatch != ((void*)0)
 && pmDispatch->pmCPUStateInit != ((void*)0)) {
 (*pmDispatch->pmCPUStateInit)();
 earlyTopology = FALSE;
    }
    pmInitDone = 1;
}
