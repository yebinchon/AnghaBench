
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int ts_deallocate_link; } ;
typedef int spl_t ;
typedef int event_t ;


 int enqueue_tail (int *,int *) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int splsched () ;
 int splx (int ) ;
 int thread_terminate_lock ;
 int thread_terminate_queue ;
 int thread_wakeup (int ) ;
 int turnstile_deallocate_queue ;

void
turnstile_deallocate_enqueue(
 struct turnstile *turnstile)
{
 spl_t s = splsched();

 simple_lock(&thread_terminate_lock);
 enqueue_tail(&turnstile_deallocate_queue, &turnstile->ts_deallocate_link);
 simple_unlock(&thread_terminate_lock);

 thread_wakeup((event_t)&thread_terminate_queue);
 splx(s);
}
