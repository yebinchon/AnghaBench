
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int mach_vm_offset_t ;
typedef int kern_return_t ;
struct TYPE_12__ {scalar_t__ active; } ;


 int KERN_ABORTED ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int KERN_TERMINATED ;
 TYPE_1__* THREAD_NULL ;
 int TRUE ;
 TYPE_1__* current_thread () ;
 int machine_thread_set_tsd_base (TYPE_1__*,int ) ;
 int thread_hold (TYPE_1__*) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;
 int thread_release (TYPE_1__*) ;
 scalar_t__ thread_stop (TYPE_1__*,int ) ;
 int thread_unstop (TYPE_1__*) ;

kern_return_t
thread_set_tsd_base(
 thread_t thread,
 mach_vm_offset_t tsd_base)
{
 kern_return_t result = KERN_SUCCESS;

 if (thread == THREAD_NULL)
  return (KERN_INVALID_ARGUMENT);

 thread_mtx_lock(thread);

 if (thread->active) {
  if (thread != current_thread()) {
   thread_hold(thread);

   thread_mtx_unlock(thread);

   if (thread_stop(thread, TRUE)) {
    thread_mtx_lock(thread);
    result = machine_thread_set_tsd_base(thread, tsd_base);
    thread_unstop(thread);
   }
   else {
    thread_mtx_lock(thread);
    result = KERN_ABORTED;
   }

   thread_release(thread);
  }
  else
   result = machine_thread_set_tsd_base(thread, tsd_base);
 }
 else
  result = KERN_TERMINATED;

 thread_mtx_unlock(thread);

 return (result);
}
