
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int task_pend_token_t ;
typedef int spl_t ;


 int proc_set_thread_policy_spinlocked (int ,int,int,int,int,int ) ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

__attribute__((used)) static void
proc_set_thread_policy_locked(thread_t thread,
                              int category,
                              int flavor,
                              int value,
                              int value2,
                              task_pend_token_t pend_token)
{
 spl_t s = splsched();
 thread_lock(thread);

 proc_set_thread_policy_spinlocked(thread, category, flavor, value, value2, pend_token);

 thread_unlock(thread);
 splx(s);
}
