
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
struct TYPE_3__ {int runq; } ;


 int run_queue_init (int *) ;

__attribute__((used)) static void
sched_dualq_processor_init(processor_t processor)
{
 run_queue_init(&processor->runq);
}
