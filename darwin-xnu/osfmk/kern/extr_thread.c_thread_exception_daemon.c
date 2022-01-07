
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;
typedef int task_t ;
struct thread_exception_elt {int exception_thread; int exception_task; int exception_type; } ;
typedef int exception_type_t ;
typedef int event_t ;


 int THREAD_UNINT ;
 int assert_thread_magic (int ) ;
 int assert_wait (int ,int ) ;
 scalar_t__ dequeue_head (int *) ;
 int kfree (struct thread_exception_elt*,int) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int task_deallocate (int ) ;
 int task_deliver_crash_notification (int ,int ,int ,int ) ;
 int task_lock (int ) ;
 int task_unlock (int ) ;
 int task_wait_till_threads_terminate_locked (int ) ;
 int thread_block (int ) ;
 int thread_deallocate (int ) ;
 int thread_exception_lock ;
 int thread_exception_queue ;

__attribute__((used)) static void
thread_exception_daemon(void)
{
 struct thread_exception_elt *elt;
 task_t task;
 thread_t thread;
 exception_type_t etype;

 simple_lock(&thread_exception_lock);
 while ((elt = (struct thread_exception_elt *)dequeue_head(&thread_exception_queue)) != ((void*)0)) {
  simple_unlock(&thread_exception_lock);

  etype = elt->exception_type;
  task = elt->exception_task;
  thread = elt->exception_thread;
  assert_thread_magic(thread);

  kfree(elt, sizeof (*elt));


  task_lock(task);
  task_wait_till_threads_terminate_locked(task);
  task_unlock(task);


  task_deallocate(task);

  thread_deallocate(thread);


  task_deliver_crash_notification(task, thread, etype, 0);

  simple_lock(&thread_exception_lock);
 }

 assert_wait((event_t)&thread_exception_queue, THREAD_UNINT);
 simple_unlock(&thread_exception_lock);

 thread_block((thread_continue_t)thread_exception_daemon);
}
