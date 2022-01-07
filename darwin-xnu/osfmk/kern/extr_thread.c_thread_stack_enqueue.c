
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int event_t ;
struct TYPE_5__ {int runq_links; } ;


 int DBG_FUNC_START ;
 int DBG_MACH_SCHED ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int ,int ,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_STACK_WAIT ;
 int assert_thread_magic (TYPE_1__*) ;
 int enqueue_tail (int *,int *) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int thread_stack_lock ;
 int thread_stack_queue ;
 int thread_tid (TYPE_1__*) ;
 int thread_wakeup (int ) ;

void
thread_stack_enqueue(
 thread_t thread)
{
 KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SCHED,MACH_STACK_WAIT) | DBG_FUNC_START, thread_tid(thread), 0, 0, 0, 0);
 assert_thread_magic(thread);

 simple_lock(&thread_stack_lock);
 enqueue_tail(&thread_stack_queue, &thread->runq_links);
 simple_unlock(&thread_stack_lock);

 thread_wakeup((event_t)&thread_stack_queue);
}
