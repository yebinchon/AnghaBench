
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
struct TYPE_3__ {int runq_bound_count; } ;



__attribute__((used)) static int
sched_traditional_processor_bound_count(processor_t processor)
{
 return processor->runq_bound_count;
}
