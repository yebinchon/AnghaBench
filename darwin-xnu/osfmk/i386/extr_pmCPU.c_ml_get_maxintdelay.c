
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int (* getMaxIntDelay ) () ;} ;


 TYPE_1__* pmDispatch ;
 int stub1 () ;

uint64_t
ml_get_maxintdelay(void)
{
    uint64_t max_delay = 0;

    if (pmDispatch != ((void*)0)
 && pmDispatch->getMaxIntDelay != ((void*)0))
 max_delay = pmDispatch->getMaxIntDelay();

    return(max_delay);
}
