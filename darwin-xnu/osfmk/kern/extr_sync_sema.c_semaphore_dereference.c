
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ task_t ;
typedef int spl_t ;
typedef TYPE_1__* semaphore_t ;
typedef TYPE_2__* ipc_port_t ;
struct TYPE_11__ {int ip_srights; } ;
struct TYPE_10__ {scalar_t__ owner; scalar_t__ active; TYPE_2__* port; int ref_count; } ;


 scalar_t__ IP_VALID (TYPE_2__*) ;
 scalar_t__ TASK_NULL ;
 int assert (int) ;
 int ipc_port_dealloc_kernel (TYPE_2__*) ;
 int mutex_pause (scalar_t__) ;
 scalar_t__ os_ref_release (int *) ;
 int semaphore_destroy_internal (scalar_t__,TYPE_1__*) ;
 int semaphore_lock (TYPE_1__*) ;
 int semaphore_unlock (TYPE_1__*) ;
 int semaphore_zone ;
 int splsched () ;
 int splx (int ) ;
 scalar_t__ task_lock_try (scalar_t__) ;
 int task_unlock (scalar_t__) ;
 int zfree (int ,TYPE_1__*) ;

void
semaphore_dereference(
 semaphore_t semaphore)
{
 uint32_t collisions;
 spl_t spl_level;

 if (semaphore == ((void*)0))
  return;

 if (os_ref_release(&semaphore->ref_count) > 0) {
  return;
 }







 ipc_port_t port = semaphore->port;

 if (IP_VALID(port)) {
  assert(!port->ip_srights);
  ipc_port_dealloc_kernel(port);
 }





 spl_level = splsched();
 semaphore_lock(semaphore);
 for (collisions = 0; semaphore->active; collisions++) {
  task_t task = semaphore->owner;

  assert(task != TASK_NULL);

  if (task_lock_try(task)) {
   semaphore_destroy_internal(task, semaphore);

   splx(spl_level);
   task_unlock(task);
   goto out;
  }


  semaphore_unlock(semaphore);
  splx(spl_level);
  mutex_pause(collisions);
  spl_level = splsched();
  semaphore_lock(semaphore);
 }
 semaphore_unlock(semaphore);
 splx(spl_level);

 out:
 zfree(semaphore_zone, semaphore);
}
