
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int queue_entry_t ;


 int NUM_CPU_WARM_CALLS ;
 int * cpu_warm_call_arr ;
 int cpu_warm_call_list ;
 int cpu_warm_lock ;
 int enqueue_head (int *,int ) ;
 int queue_init (int *) ;
 int simple_lock_init (int *,int ) ;

__attribute__((used)) static void
cpu_prewarm_init()
{
 int i;

 simple_lock_init(&cpu_warm_lock, 0);
 queue_init(&cpu_warm_call_list);
 for (i = 0; i < NUM_CPU_WARM_CALLS; i++) {
  enqueue_head(&cpu_warm_call_list, (queue_entry_t)&cpu_warm_call_arr[i]);
 }
}
