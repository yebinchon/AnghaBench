
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ task_t ;
typedef int spl_t ;
typedef TYPE_1__* semaphore_t ;
typedef int kern_return_t ;
struct TYPE_8__ {scalar_t__ owner; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 TYPE_1__* SEMAPHORE_NULL ;
 scalar_t__ TASK_NULL ;
 int semaphore_dereference (TYPE_1__*) ;
 int semaphore_destroy_internal (scalar_t__,TYPE_1__*) ;
 int semaphore_lock (TYPE_1__*) ;
 int semaphore_unlock (TYPE_1__*) ;
 int splsched () ;
 int splx (int ) ;
 int task_lock (scalar_t__) ;
 int task_unlock (scalar_t__) ;

kern_return_t
semaphore_destroy(
 task_t task,
 semaphore_t semaphore)
{
 spl_t spl_level;

 if (semaphore == SEMAPHORE_NULL)
  return KERN_INVALID_ARGUMENT;

 if (task == TASK_NULL) {
  semaphore_dereference(semaphore);
  return KERN_INVALID_ARGUMENT;
 }

 task_lock(task);
 spl_level = splsched();
 semaphore_lock(semaphore);

 if (semaphore->owner != task) {
  semaphore_unlock(semaphore);
  semaphore_dereference(semaphore);
  splx(spl_level);
  task_unlock(task);
  return KERN_INVALID_ARGUMENT;
 }

 semaphore_destroy_internal(task, semaphore);


 splx(spl_level);
 task_unlock(task);

 semaphore_dereference(semaphore);
 return KERN_SUCCESS;
}
