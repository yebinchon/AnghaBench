
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * psets; } ;


 int corpse_tasks ;
 int cpu_to_processor (int ) ;
 int master_cpu ;
 int master_processor ;
 int processor_init (int ,int ,int *) ;
 int processor_list_lock ;
 int pset0 ;
 int pset_init (int *,TYPE_1__*) ;
 TYPE_1__ pset_node0 ;
 int pset_node_lock ;
 int queue_init (int *) ;
 int simple_lock_init (int *,int ) ;
 int tasks ;
 int terminated_tasks ;
 int threads ;

void
processor_bootstrap(void)
{
 pset_init(&pset0, &pset_node0);
 pset_node0.psets = &pset0;

 simple_lock_init(&pset_node_lock, 0);

 queue_init(&tasks);
 queue_init(&terminated_tasks);
 queue_init(&threads);
 queue_init(&corpse_tasks);

 simple_lock_init(&processor_list_lock, 0);

 master_processor = cpu_to_processor(master_cpu);

 processor_init(master_processor, master_cpu, &pset0);
}
