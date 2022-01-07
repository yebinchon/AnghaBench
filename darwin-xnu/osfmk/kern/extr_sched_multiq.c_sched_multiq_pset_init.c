
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* processor_set_t ;
struct TYPE_3__ {int pset_runq; } ;


 int run_queue_init (int *) ;

__attribute__((used)) static void
sched_multiq_pset_init(processor_set_t pset)
{
 run_queue_init(&pset->pset_runq);
}
