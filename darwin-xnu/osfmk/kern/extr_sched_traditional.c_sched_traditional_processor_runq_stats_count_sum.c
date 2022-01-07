
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int processor_t ;
struct TYPE_3__ {int count_sum; } ;
struct TYPE_4__ {TYPE_1__ runq_stats; } ;


 TYPE_2__* runq_for_processor (int ) ;

__attribute__((used)) static uint64_t
sched_traditional_processor_runq_stats_count_sum(processor_t processor)
{
 return runq_for_processor(processor)->runq_stats.count_sum;
}
