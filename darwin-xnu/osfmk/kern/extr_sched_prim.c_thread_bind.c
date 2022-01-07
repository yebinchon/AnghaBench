
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int spl_t ;
typedef int processor_t ;


 int current_thread () ;
 int splsched () ;
 int splx (int ) ;
 int thread_bind_internal (int ,int ) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

processor_t
thread_bind(
 processor_t processor)
{
 thread_t self = current_thread();
 processor_t prev;
 spl_t s;

 s = splsched();
 thread_lock(self);

 prev = thread_bind_internal(self, processor);

 thread_unlock(self);
 splx(s);

 return (prev);
}
