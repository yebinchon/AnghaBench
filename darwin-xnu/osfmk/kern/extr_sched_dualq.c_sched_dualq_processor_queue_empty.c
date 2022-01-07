
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int processor_t ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ count; } ;
struct TYPE_3__ {scalar_t__ count; } ;


 TYPE_2__* dualq_bound_runq (int ) ;
 TYPE_1__* dualq_main_runq (int ) ;

__attribute__((used)) static boolean_t
sched_dualq_processor_queue_empty(processor_t processor)
{
 return dualq_main_runq(processor)->count == 0 &&
        dualq_bound_runq(processor)->count == 0;
}
