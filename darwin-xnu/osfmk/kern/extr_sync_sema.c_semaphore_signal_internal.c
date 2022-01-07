
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
typedef int spl_t ;
typedef TYPE_1__* semaphore_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_5__ {int count; int waitq; int active; } ;


 scalar_t__ KERN_NOT_WAITING ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ KERN_TERMINATED ;
 int SEMAPHORE_EVENT ;
 int SEMAPHORE_SIGNAL_ALL ;
 int SEMAPHORE_SIGNAL_PREPOST ;
 int THREAD_AWAKENED ;
 scalar_t__ THREAD_NULL ;
 int WAITQ_ALL_PRIORITIES ;
 int WAITQ_KEEP_LOCKED ;
 int WAITQ_UNLOCK ;
 int semaphore_lock (TYPE_1__*) ;
 int semaphore_unlock (TYPE_1__*) ;
 int splsched () ;
 int splx (int ) ;
 scalar_t__ waitq_wakeup64_all_locked (int *,int ,int ,int *,int ,int ) ;
 scalar_t__ waitq_wakeup64_one_locked (int *,int ,int ,int *,int ,int ) ;
 scalar_t__ waitq_wakeup64_thread_locked (int *,int ,scalar_t__,int ,int ) ;

kern_return_t
semaphore_signal_internal(
 semaphore_t semaphore,
 thread_t thread,
 int options)
{
 kern_return_t kr;
 spl_t spl_level;

 spl_level = splsched();
 semaphore_lock(semaphore);

 if (!semaphore->active) {
  semaphore_unlock(semaphore);
  splx(spl_level);
  return KERN_TERMINATED;
 }

 if (thread != THREAD_NULL) {
  if (semaphore->count < 0) {
   kr = waitq_wakeup64_thread_locked(
     &semaphore->waitq,
     SEMAPHORE_EVENT,
     thread,
     THREAD_AWAKENED,
     WAITQ_UNLOCK);

  } else {
   kr = KERN_NOT_WAITING;
   semaphore_unlock(semaphore);
  }
  splx(spl_level);
  return kr;
 }

 if (options & SEMAPHORE_SIGNAL_ALL) {
  int old_count = semaphore->count;

  kr = KERN_NOT_WAITING;
  if (old_count < 0) {
   semaphore->count = 0;
   kr = waitq_wakeup64_all_locked(
     &semaphore->waitq,
     SEMAPHORE_EVENT,
     THREAD_AWAKENED, ((void*)0),
     WAITQ_ALL_PRIORITIES,
     WAITQ_UNLOCK);

  } else {
   if (options & SEMAPHORE_SIGNAL_PREPOST)
    semaphore->count++;
   kr = KERN_SUCCESS;
   semaphore_unlock(semaphore);
  }
  splx(spl_level);
  return kr;
 }

 if (semaphore->count < 0) {
  kr = waitq_wakeup64_one_locked(
     &semaphore->waitq,
     SEMAPHORE_EVENT,
     THREAD_AWAKENED, ((void*)0),
     WAITQ_ALL_PRIORITIES,
     WAITQ_KEEP_LOCKED);
  if (kr == KERN_SUCCESS) {
   semaphore_unlock(semaphore);
   splx(spl_level);
   return KERN_SUCCESS;
  } else {
   semaphore->count = 0;
  }
 }

 if (options & SEMAPHORE_SIGNAL_PREPOST) {
  semaphore->count++;
 }

 semaphore_unlock(semaphore);
 splx(spl_level);
 return KERN_NOT_WAITING;
}
