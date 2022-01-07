
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* thread_t ;
typedef int thread_continue_t ;
typedef int spl_t ;
typedef TYPE_2__* semaphore_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_14__ {int count; int waitq; int active; } ;
struct TYPE_13__ {int wait_result; void (* sth_continuation ) (scalar_t__) ;TYPE_2__* sth_signalsemaphore; TYPE_2__* sth_waitsemaphore; } ;


 scalar_t__ KERN_ABORTED ;
 scalar_t__ KERN_ALREADY_WAITING ;
 scalar_t__ KERN_NOT_WAITING ;
 scalar_t__ KERN_OPERATION_TIMED_OUT ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ KERN_TERMINATED ;
 int SEMAPHORE_EVENT ;
 TYPE_2__* SEMAPHORE_NULL ;
 int SEMAPHORE_SIGNAL_PREPOST ;
 int SEMAPHORE_TIMEOUT_NOBLOCK ;
 int THREAD_ABORTSAFE ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_INTERRUPTED ;
 int THREAD_NULL ;
 int TIMEOUT_NO_LEEWAY ;
 int TIMEOUT_URGENCY_USER_NORMAL ;
 int clear_wait (TYPE_1__*,int ) ;
 TYPE_1__* current_thread () ;
 int kThreadWaitSemaphore ;
 scalar_t__ semaphore_convert_wait_result (int) ;
 int semaphore_lock (TYPE_2__*) ;
 scalar_t__ semaphore_signal_internal (TYPE_2__*,int ,int ) ;
 int semaphore_unlock (TYPE_2__*) ;
 scalar_t__ semaphore_wait_continue ;
 int splsched () ;
 int splx (int ) ;
 int thread_block (int ) ;
 int thread_set_pending_block_hint (TYPE_1__*,int ) ;
 int waitq_assert_wait64_locked (int *,int ,int ,int ,int ,int ,TYPE_1__*) ;

__attribute__((used)) static kern_return_t
semaphore_wait_internal(
 semaphore_t wait_semaphore,
 semaphore_t signal_semaphore,
 uint64_t deadline,
 int option,
 void (*caller_cont)(kern_return_t))
{
 int wait_result;
 spl_t spl_level;
 kern_return_t kr = KERN_ALREADY_WAITING;

 spl_level = splsched();
 semaphore_lock(wait_semaphore);

 if (!wait_semaphore->active) {
  kr = KERN_TERMINATED;
 } else if (wait_semaphore->count > 0) {
  wait_semaphore->count--;
  kr = KERN_SUCCESS;
 } else if (option & SEMAPHORE_TIMEOUT_NOBLOCK) {
  kr = KERN_OPERATION_TIMED_OUT;
 } else {
  thread_t self = current_thread();

  wait_semaphore->count = -1;

  thread_set_pending_block_hint(self, kThreadWaitSemaphore);
  (void)waitq_assert_wait64_locked(
     &wait_semaphore->waitq,
     SEMAPHORE_EVENT,
     THREAD_ABORTSAFE,
     TIMEOUT_URGENCY_USER_NORMAL,
     deadline, TIMEOUT_NO_LEEWAY,
     self);
 }
 semaphore_unlock(wait_semaphore);
 splx(spl_level);





 if (signal_semaphore != SEMAPHORE_NULL) {
  kern_return_t signal_kr;






  signal_kr = semaphore_signal_internal(signal_semaphore,
            THREAD_NULL,
            SEMAPHORE_SIGNAL_PREPOST);

  if (signal_kr == KERN_NOT_WAITING)
   signal_kr = KERN_SUCCESS;
  else if (signal_kr == KERN_TERMINATED) {
   thread_t self = current_thread();

   clear_wait(self, THREAD_INTERRUPTED);
   kr = semaphore_convert_wait_result(self->wait_result);
   if (kr == KERN_ABORTED)
    kr = KERN_TERMINATED;
  }
 }





 if (kr != KERN_ALREADY_WAITING)
  return kr;
 if (caller_cont) {
  thread_t self = current_thread();

  self->sth_continuation = caller_cont;
  self->sth_waitsemaphore = wait_semaphore;
  self->sth_signalsemaphore = signal_semaphore;
  wait_result = thread_block((thread_continue_t)semaphore_wait_continue);
 }
 else {
  wait_result = thread_block(THREAD_CONTINUE_NULL);
 }

 return (semaphore_convert_wait_result(wait_result));
}
