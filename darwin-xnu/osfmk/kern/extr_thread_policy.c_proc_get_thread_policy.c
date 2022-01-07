
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 int proc_get_thread_policy_locked (int ,int,int,int *) ;
 int thread_mtx_lock (int ) ;
 int thread_mtx_unlock (int ) ;

int
proc_get_thread_policy(thread_t thread,
                       int category,
                       int flavor)
{
 int value = 0;
 thread_mtx_lock(thread);
 value = proc_get_thread_policy_locked(thread, category, flavor, ((void*)0));
 thread_mtx_unlock(thread);
 return value;
}
