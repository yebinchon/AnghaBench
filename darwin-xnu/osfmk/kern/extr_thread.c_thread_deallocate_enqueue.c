
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int spl_t ;
typedef int event_t ;
struct TYPE_3__ {int runq_links; } ;


 int enqueue_tail (int *,int *) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int splsched () ;
 int splx (int ) ;
 int thread_deallocate_queue ;
 int thread_terminate_lock ;
 int thread_terminate_queue ;
 int thread_wakeup (int ) ;

__attribute__((used)) static void
thread_deallocate_enqueue(
 thread_t thread)
{
 spl_t s = splsched();

 simple_lock(&thread_terminate_lock);
 enqueue_tail(&thread_deallocate_queue, &thread->runq_links);
 simple_unlock(&thread_terminate_lock);

 thread_wakeup((event_t)&thread_terminate_queue);
 splx(s);
}
