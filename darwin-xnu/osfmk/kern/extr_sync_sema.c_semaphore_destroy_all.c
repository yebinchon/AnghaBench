
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* task_t ;
typedef int spl_t ;
typedef scalar_t__ semaphore_t ;
struct TYPE_6__ {int semaphore_list; } ;


 scalar_t__ SEMASPERSPL ;
 int queue_empty (int *) ;
 scalar_t__ queue_first (int *) ;
 int semaphore_destroy_internal (TYPE_1__*,scalar_t__) ;
 int semaphore_lock (scalar_t__) ;
 int splsched () ;
 int splx (int ) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

void
semaphore_destroy_all(
 task_t task)
{
 uint32_t count;
 spl_t spl_level;

 count = 0;
 task_lock(task);
 while (!queue_empty(&task->semaphore_list)) {
  semaphore_t semaphore;

  semaphore = (semaphore_t) queue_first(&task->semaphore_list);

  if (count == 0)
   spl_level = splsched();
  semaphore_lock(semaphore);

  semaphore_destroy_internal(task, semaphore);



  if (++count == SEMASPERSPL) {
   count = 0;
   splx(spl_level);
  }
 }
 if (count != 0)
  splx(spl_level);

 task_unlock(task);
}
