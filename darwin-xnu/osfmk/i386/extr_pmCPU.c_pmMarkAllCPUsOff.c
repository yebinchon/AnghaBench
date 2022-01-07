
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* markAllCPUsOff ) () ;} ;


 TYPE_1__* pmDispatch ;
 scalar_t__ pmInitDone ;
 int stub1 () ;

void
pmMarkAllCPUsOff(void)
{
    if (pmInitDone
 && pmDispatch != ((void*)0)
 && pmDispatch->markAllCPUsOff != ((void*)0))
 (*pmDispatch->markAllCPUsOff)();
}
