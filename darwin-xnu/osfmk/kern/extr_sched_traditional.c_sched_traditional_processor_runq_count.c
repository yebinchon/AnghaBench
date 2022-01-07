
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int processor_t ;
struct TYPE_2__ {int count; } ;


 TYPE_1__* runq_for_processor (int ) ;

__attribute__((used)) static int
sched_traditional_processor_runq_count(processor_t processor)
{
 return runq_for_processor(processor)->count;
}
