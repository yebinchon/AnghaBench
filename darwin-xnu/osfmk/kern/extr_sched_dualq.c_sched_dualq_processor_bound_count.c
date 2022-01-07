
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int processor_t ;
struct TYPE_2__ {int count; } ;


 TYPE_1__* dualq_bound_runq (int ) ;

__attribute__((used)) static int
sched_dualq_processor_bound_count(processor_t processor)
{
 return dualq_bound_runq(processor)->count;
}
