
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int (* setMaxIntDelay ) (int ) ;} ;


 int DELAY_UNSET ;
 int earlyMaxIntDelay ;
 TYPE_1__* pmDispatch ;
 int stub1 (int ) ;

void
ml_set_maxintdelay(uint64_t mdelay)
{
    if (pmDispatch != ((void*)0)
 && pmDispatch->setMaxIntDelay != ((void*)0)) {
 earlyMaxIntDelay = DELAY_UNSET;
 pmDispatch->setMaxIntDelay(mdelay);
    } else
 earlyMaxIntDelay = mdelay;
}
