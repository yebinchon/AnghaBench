
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int (* getMaxSnoop ) () ;} ;


 TYPE_1__* pmDispatch ;
 scalar_t__ pmInitDone ;
 int stub1 () ;

unsigned
ml_get_maxsnoop(void)
{
    uint64_t max_snoop = 0;

    if (pmInitDone
 && pmDispatch != ((void*)0)
 && pmDispatch->getMaxSnoop != ((void*)0))
 max_snoop = pmDispatch->getMaxSnoop();

    return((unsigned)(max_snoop & 0xffffffff));
}
