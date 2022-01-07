
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* task_t ;
typedef int mach_msg_type_number_t ;
typedef int mach_exception_data_t ;
typedef int lck_mtx_t ;
typedef scalar_t__ kern_return_t ;
typedef TYPE_3__* host_priv_t ;
typedef scalar_t__ exception_type_t ;
struct TYPE_9__ {int exc_actions; int lock; } ;
struct TYPE_8__ {int exc_actions; int itk_lock_data; } ;
struct TYPE_7__ {TYPE_2__* task; int exc_actions; int mutex; } ;


 scalar_t__ EXC_CORPSE_NOTIFY ;
 scalar_t__ EXC_CRASH ;
 scalar_t__ EXC_GUARD ;
 scalar_t__ EXC_RESOURCE ;
 scalar_t__ EXC_RPC_ALERT ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_RCV_PORT_DIED ;
 int assert (int) ;
 scalar_t__ check_exc_receiver_dependency (scalar_t__,int ,int *) ;
 scalar_t__ exception_deliver (TYPE_1__*,scalar_t__,int ,int ,int ,int *) ;
 TYPE_3__* host_priv_self () ;
 int panic (char*) ;
 scalar_t__ panic_on_exception_triage ;
 int thread_exception_return () ;

kern_return_t
exception_triage_thread(
 exception_type_t exception,
 mach_exception_data_t code,
 mach_msg_type_number_t codeCnt,
 thread_t thread)
{
 task_t task;
 host_priv_t host_priv;
 lck_mtx_t *mutex;
 kern_return_t kr = KERN_FAILURE;

 assert(exception != EXC_RPC_ALERT);
 if (panic_on_exception_triage) {
  panic("called exception_triage when it was forbidden by the boot environment");
 }




 mutex = &thread->mutex;
 if (KERN_SUCCESS == check_exc_receiver_dependency(exception, thread->exc_actions, mutex))
 {
  kr = exception_deliver(thread, exception, code, codeCnt, thread->exc_actions, mutex);
  if (kr == KERN_SUCCESS || kr == MACH_RCV_PORT_DIED)
   goto out;
 }




 task = thread->task;
 mutex = &task->itk_lock_data;
 if (KERN_SUCCESS == check_exc_receiver_dependency(exception, task->exc_actions, mutex))
 {
  kr = exception_deliver(thread, exception, code, codeCnt, task->exc_actions, mutex);
  if (kr == KERN_SUCCESS || kr == MACH_RCV_PORT_DIED)
   goto out;
 }




 host_priv = host_priv_self();
 mutex = &host_priv->lock;

 if (KERN_SUCCESS == check_exc_receiver_dependency(exception, host_priv->exc_actions, mutex))
 {
  kr = exception_deliver(thread, exception, code, codeCnt, host_priv->exc_actions, mutex);
  if (kr == KERN_SUCCESS || kr == MACH_RCV_PORT_DIED)
   goto out;
 }

out:
 if ((exception != EXC_CRASH) && (exception != EXC_RESOURCE) &&
     (exception != EXC_GUARD) && (exception != EXC_CORPSE_NOTIFY))
  thread_exception_return();
 return kr;
}
