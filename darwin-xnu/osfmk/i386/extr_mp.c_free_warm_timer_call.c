
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timer_call_t ;
typedef int spl_t ;
typedef int queue_entry_t ;


 int cpu_warm_call_list ;
 int cpu_warm_lock ;
 int enqueue_head (int *,int ) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int splsched () ;
 int splx (int ) ;

__attribute__((used)) static void
free_warm_timer_call(timer_call_t call)
{
 spl_t x;

 x = splsched();
 simple_lock(&cpu_warm_lock);
 enqueue_head(&cpu_warm_call_list, (queue_entry_t)call);
 simple_unlock(&cpu_warm_lock);
 splx(x);
}
