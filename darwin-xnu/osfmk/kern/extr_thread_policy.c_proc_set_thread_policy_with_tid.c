
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ thread_t ;
typedef int task_t ;


 scalar_t__ THREAD_NULL ;
 int proc_set_thread_policy (scalar_t__,int,int,int) ;
 scalar_t__ task_findtid (int ,int ) ;
 int thread_deallocate (scalar_t__) ;

void
proc_set_thread_policy_with_tid(task_t task,
                                uint64_t tid,
                                int category,
                                int flavor,
                                int value)
{

 thread_t thread = task_findtid(task, tid);

 if (thread == THREAD_NULL)
  return;

 proc_set_thread_policy(thread, category, flavor, value);

 thread_deallocate(thread);
}
