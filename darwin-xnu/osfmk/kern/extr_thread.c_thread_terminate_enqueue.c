
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int event_t ;
struct TYPE_3__ {int runq_links; int thread_id; } ;


 int KDBG_RELEASE (int ,int ) ;
 int TRACE_DATA_THREAD_TERMINATE ;
 int enqueue_tail (int *,int *) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int thread_terminate_lock ;
 int thread_terminate_queue ;
 int thread_wakeup (int ) ;

void
thread_terminate_enqueue(
 thread_t thread)
{
 KDBG_RELEASE(TRACE_DATA_THREAD_TERMINATE, thread->thread_id);

 simple_lock(&thread_terminate_lock);
 enqueue_tail(&thread_terminate_queue, &thread->runq_links);
 simple_unlock(&thread_terminate_lock);

 thread_wakeup((event_t)&thread_terminate_queue);
}
