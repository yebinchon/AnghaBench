
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int processor_t ;
struct TYPE_4__ {int count; } ;
struct TYPE_3__ {int count; } ;


 TYPE_2__* dualq_bound_runq (int ) ;
 TYPE_1__* dualq_main_runq (int ) ;

__attribute__((used)) static int
sched_dualq_runq_count(processor_t processor)
{
 return dualq_main_runq(processor)->count + dualq_bound_runq(processor)->count;
}
