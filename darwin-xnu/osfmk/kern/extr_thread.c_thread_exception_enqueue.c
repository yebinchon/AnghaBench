
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int task_t ;
struct thread_exception_elt {int exception_thread; int exception_task; scalar_t__ exception_type; } ;
typedef int queue_entry_t ;
typedef scalar_t__ exception_type_t ;
typedef int event_t ;


 scalar_t__ EXC_GUARD ;
 scalar_t__ EXC_RESOURCE ;
 int assert (int) ;
 int enqueue_tail (int *,int ) ;
 struct thread_exception_elt* kalloc (int) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int thread_exception_lock ;
 int thread_exception_queue ;
 int thread_wakeup (int ) ;

void
thread_exception_enqueue(
 task_t task,
 thread_t thread,
 exception_type_t etype)
{
 assert(EXC_RESOURCE == etype || EXC_GUARD == etype);
 struct thread_exception_elt *elt = kalloc(sizeof (*elt));
 elt->exception_type = etype;
 elt->exception_task = task;
 elt->exception_thread = thread;

 simple_lock(&thread_exception_lock);
 enqueue_tail(&thread_exception_queue, (queue_entry_t)elt);
 simple_unlock(&thread_exception_lock);

 thread_wakeup((event_t)&thread_exception_queue);
}
