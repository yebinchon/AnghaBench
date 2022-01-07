
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* pmSetRunCount ) (int ) ;} ;


 TYPE_1__* pmDispatch ;
 int saved_run_count ;
 int stub1 (int ) ;

void
machine_run_count(uint32_t count)
{
    if (pmDispatch != ((void*)0)
 && pmDispatch->pmSetRunCount != ((void*)0))
 pmDispatch->pmSetRunCount(count);
    else
 saved_run_count = count;
}
