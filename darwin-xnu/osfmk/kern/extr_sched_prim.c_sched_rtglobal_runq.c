
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * rt_queue_t ;
typedef int processor_set_t ;
struct TYPE_2__ {int rt_runq; } ;


 TYPE_1__ pset0 ;

rt_queue_t
sched_rtglobal_runq(processor_set_t pset)
{
 (void)pset;

 return &pset0.rt_runq;
}
