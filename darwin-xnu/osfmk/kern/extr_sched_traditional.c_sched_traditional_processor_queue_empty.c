
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int processor_t ;
typedef int boolean_t ;
struct TYPE_2__ {scalar_t__ count; } ;


 TYPE_1__* runq_for_processor (int ) ;

__attribute__((used)) static boolean_t
sched_traditional_processor_queue_empty(processor_t processor)
{
 return runq_for_processor(processor)->count == 0;
}
