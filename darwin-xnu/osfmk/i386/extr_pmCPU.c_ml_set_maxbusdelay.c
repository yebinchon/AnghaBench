
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int (* setMaxBusDelay ) (int ) ;} ;


 int DELAY_UNSET ;
 int earlyMaxBusDelay ;
 TYPE_1__* pmDispatch ;
 int stub1 (int ) ;

void
ml_set_maxbusdelay(uint32_t mdelay)
{
    uint64_t maxdelay = mdelay;

    if (pmDispatch != ((void*)0)
 && pmDispatch->setMaxBusDelay != ((void*)0)) {
 earlyMaxBusDelay = DELAY_UNSET;
 pmDispatch->setMaxBusDelay(maxdelay);
    } else
 earlyMaxBusDelay = maxdelay;
}
