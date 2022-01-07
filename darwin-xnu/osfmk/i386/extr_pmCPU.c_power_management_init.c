
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cstateInit ) () ;} ;


 TYPE_1__* pmDispatch ;
 int stub1 () ;

void
power_management_init(void)
{
    if (pmDispatch != ((void*)0) && pmDispatch->cstateInit != ((void*)0))
 (*pmDispatch->cstateInit)();
}
