
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct task_pend_token {int dummy; } ;


 int proc_set_thread_policy_locked (int ,int,int,int,int ,struct task_pend_token*) ;
 int thread_mtx_lock (int ) ;
 int thread_mtx_unlock (int ) ;
 int thread_policy_update_complete_unlocked (int ,struct task_pend_token*) ;

void
proc_set_thread_policy(thread_t thread,
                       int category,
                       int flavor,
                       int value)
{
 struct task_pend_token pend_token = {};

 thread_mtx_lock(thread);

 proc_set_thread_policy_locked(thread, category, flavor, value, 0, &pend_token);

 thread_mtx_unlock(thread);

 thread_policy_update_complete_unlocked(thread, &pend_token);
}
