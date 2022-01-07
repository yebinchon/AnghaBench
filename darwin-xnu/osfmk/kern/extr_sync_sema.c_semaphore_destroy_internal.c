
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef TYPE_2__* semaphore_t ;
typedef int queue_entry_t ;
struct TYPE_8__ {int active; int count; int waitq; TYPE_1__* owner; } ;
struct TYPE_7__ {int semaphores_owned; } ;


 int FALSE ;
 int SEMAPHORE_EVENT ;
 TYPE_1__* TASK_NULL ;
 int THREAD_RESTART ;
 int WAITQ_ALL_PRIORITIES ;
 int WAITQ_UNLOCK ;
 int assert (int) ;
 int remqueue (int ) ;
 int semaphore_unlock (TYPE_2__*) ;
 int waitq_wakeup64_all_locked (int *,int ,int ,int *,int ,int ) ;

__attribute__((used)) static void
semaphore_destroy_internal(
 task_t task,
 semaphore_t semaphore)
{
 int old_count;


 assert(semaphore->owner == task);
 remqueue((queue_entry_t) semaphore);
 semaphore->owner = TASK_NULL;
 task->semaphores_owned--;




 assert(semaphore->active);
 semaphore->active = FALSE;




 old_count = semaphore->count;
 semaphore->count = 0;

 if (old_count < 0) {
  waitq_wakeup64_all_locked(&semaphore->waitq,
       SEMAPHORE_EVENT,
       THREAD_RESTART, ((void*)0),
       WAITQ_ALL_PRIORITIES,
       WAITQ_UNLOCK);

 } else {
  semaphore_unlock(semaphore);
 }
}
