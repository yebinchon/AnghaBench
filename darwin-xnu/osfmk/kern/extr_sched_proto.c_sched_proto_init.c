
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * global_runq ;
 int global_runq_lock ;
 int global_runq_storage ;
 int master_processor ;
 int printf (char*,int) ;
 int proto_processor ;
 int proto_quantum_us ;
 int run_queue_init (int *) ;
 scalar_t__ runqueue_generation ;
 int simple_lock_init (int *,int ) ;

__attribute__((used)) static void
sched_proto_init(void)
{
 proto_quantum_us = 10*1000;

 printf("standard proto timeslicing quantum is %d us\n", proto_quantum_us);

 simple_lock_init(&global_runq_lock, 0);
 global_runq = &global_runq_storage;
 run_queue_init(global_runq);
 runqueue_generation = 0;

 proto_processor = master_processor;
}
