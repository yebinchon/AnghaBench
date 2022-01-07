
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * timer_call_t ;
typedef int spl_t ;


 int cpu_warm_call_list ;
 int cpu_warm_lock ;
 scalar_t__ dequeue_head (int *) ;
 int queue_empty (int *) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int splsched () ;
 int splx (int ) ;

__attribute__((used)) static timer_call_t
grab_warm_timer_call()
{
 spl_t x;
 timer_call_t call = ((void*)0);

 x = splsched();
 simple_lock(&cpu_warm_lock);
 if (!queue_empty(&cpu_warm_call_list)) {
  call = (timer_call_t) dequeue_head(&cpu_warm_call_list);
 }
 simple_unlock(&cpu_warm_lock);
 splx(x);

 return call;
}
