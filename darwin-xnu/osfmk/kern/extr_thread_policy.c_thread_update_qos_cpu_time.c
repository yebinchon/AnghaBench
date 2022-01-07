
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int spl_t ;


 int splsched () ;
 int splx (int ) ;
 int thread_lock (int ) ;
 int thread_mtx_lock (int ) ;
 int thread_mtx_unlock (int ) ;
 int thread_unlock (int ) ;
 int thread_update_qos_cpu_time_locked (int ) ;

void
thread_update_qos_cpu_time(thread_t thread)
{
 thread_mtx_lock(thread);

 spl_t s = splsched();
 thread_lock(thread);

 thread_update_qos_cpu_time_locked(thread);

 thread_unlock(thread);
 splx(s);

 thread_mtx_unlock(thread);
}
