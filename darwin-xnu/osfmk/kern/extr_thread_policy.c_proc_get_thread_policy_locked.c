
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int spl_t ;


 int splsched () ;
 int splx (int ) ;
 int thread_get_requested_policy_spinlocked (int ,int,int,int*) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

__attribute__((used)) static int
proc_get_thread_policy_locked(thread_t thread,
                              int category,
                              int flavor,
                              int* value2)
{
 int value = 0;

 spl_t s = splsched();
 thread_lock(thread);

 value = thread_get_requested_policy_spinlocked(thread, category, flavor, value2);

 thread_unlock(thread);
 splx(s);

 return value;
}
