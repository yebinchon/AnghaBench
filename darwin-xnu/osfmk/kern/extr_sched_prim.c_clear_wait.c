
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;
typedef int thread_t ;
typedef int spl_t ;
typedef int kern_return_t ;


 int clear_wait_internal (int ,int ) ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

kern_return_t
clear_wait(
 thread_t thread,
 wait_result_t result)
{
 kern_return_t ret;
 spl_t s;

 s = splsched();
 thread_lock(thread);
 ret = clear_wait_internal(thread, result);
 thread_unlock(thread);
 splx(s);
 return ret;
}
