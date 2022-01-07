
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int (* getMaxBusDelay ) () ;} ;


 TYPE_1__* pmDispatch ;
 scalar_t__ pmInitDone ;
 int stub1 () ;

uint32_t
ml_get_maxbusdelay(void)
{
    uint64_t max_delay = 0;

    if (pmInitDone
 && pmDispatch != ((void*)0)
 && pmDispatch->getMaxBusDelay != ((void*)0))
 max_delay = pmDispatch->getMaxBusDelay();

    return((uint32_t)(max_delay & 0xffffffff));
}
