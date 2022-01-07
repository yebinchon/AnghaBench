
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vm_size_t ;
typedef TYPE_1__* thread_t ;
typedef TYPE_2__* task_t ;
typedef int queue_entry_t ;
typedef int * processor_set_t ;
typedef unsigned int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_10__ {int tasks; } ;
struct TYPE_9__ {TYPE_2__* task; int threads; } ;


 scalar_t__ FALSE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int * PROCESSOR_SET_NULL ;
 int PSET_THING_THREAD ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int bcopy (void*,void*,int) ;
 void* kalloc (int) ;
 TYPE_2__* kernel_task ;
 int kfree (void*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ mac_task_check_expose_task (TYPE_2__*) ;
 int pset0 ;
 int queue_end (int *,int ) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ queue_next (int *) ;
 int task_deallocate (TYPE_2__*) ;
 int task_reference_internal (TYPE_2__*) ;
 int tasks ;
 int tasks_count ;
 int tasks_threads_lock ;
 int thread_deallocate (TYPE_1__*) ;
 int thread_reference_internal (TYPE_1__*) ;
 int threads ;
 int threads_count ;

kern_return_t
processor_set_things(
 processor_set_t pset,
 void **thing_list,
 mach_msg_type_number_t *count,
 int type)
{
 unsigned int i;
 task_t task;
 thread_t thread;

 task_t *task_list;
 unsigned int actual_tasks;
 vm_size_t task_size, task_size_needed;

 thread_t *thread_list;
 unsigned int actual_threads;
 vm_size_t thread_size, thread_size_needed;

 void *addr, *newaddr;
 vm_size_t size, size_needed;

 if (pset == PROCESSOR_SET_NULL || pset != &pset0)
  return (KERN_INVALID_ARGUMENT);

 task_size = 0;
 task_size_needed = 0;
 task_list = ((void*)0);
 actual_tasks = 0;

 thread_size = 0;
 thread_size_needed = 0;
 thread_list = ((void*)0);
 actual_threads = 0;

 for (;;) {
  lck_mtx_lock(&tasks_threads_lock);


  if (type == PSET_THING_THREAD)
   thread_size_needed = threads_count * sizeof(void *);

  else

   task_size_needed = tasks_count * sizeof(void *);

  if (task_size_needed <= task_size &&
      thread_size_needed <= thread_size)
   break;


  lck_mtx_unlock(&tasks_threads_lock);


  if (task_size_needed > task_size) {
   if (task_size != 0)
    kfree(task_list, task_size);

   assert(task_size_needed > 0);
   task_size = task_size_needed;

   task_list = (task_t *)kalloc(task_size);
   if (task_list == ((void*)0)) {
    if (thread_size != 0)
     kfree(thread_list, thread_size);
    return (KERN_RESOURCE_SHORTAGE);
   }
  }


  if (thread_size_needed > thread_size) {
   if (thread_size != 0)
    kfree(thread_list, thread_size);

   assert(thread_size_needed > 0);
   thread_size = thread_size_needed;

   thread_list = (thread_t *)kalloc(thread_size);
   if (thread_list == 0) {
    if (task_size != 0)
     kfree(task_list, task_size);
    return (KERN_RESOURCE_SHORTAGE);
   }
  }
 }




 if (type == PSET_THING_THREAD) {
  for (thread = (thread_t)queue_first(&threads);
       !queue_end(&threads, (queue_entry_t)thread);
       thread = (thread_t)queue_next(&thread->threads)) {



    thread_reference_internal(thread);
    thread_list[actual_threads++] = thread;



  }
 }

   else {


  for (task = (task_t)queue_first(&tasks);
       !queue_end(&tasks, (queue_entry_t)task);
       task = (task_t)queue_next(&task->tasks)) {



    task_reference_internal(task);
    task_list[actual_tasks++] = task;



  }

 }


 lck_mtx_unlock(&tasks_threads_lock);
 if (type == PSET_THING_THREAD) {
  if (actual_threads == 0) {

   assert(task_size == 0);
   if (thread_size != 0)
    kfree(thread_list, thread_size);
   *thing_list = ((void*)0);
   *count = 0;
   return KERN_SUCCESS;
  }
  size_needed = actual_threads * sizeof(void *);
  size = thread_size;
  addr = thread_list;
 } else {
  if (actual_tasks == 0) {

   assert(thread_size == 0);
   if (task_size != 0)
    kfree(task_list, task_size);
   *thing_list = ((void*)0);
   *count = 0;
   return KERN_SUCCESS;
  }
  size_needed = actual_tasks * sizeof(void *);
  size = task_size;
  addr = task_list;
 }


 if (size_needed < size) {
  newaddr = kalloc(size_needed);
  if (newaddr == 0) {
   for (i = 0; i < actual_tasks; i++) {
    if (type == PSET_THING_THREAD)
     thread_deallocate(thread_list[i]);
    else
     task_deallocate(task_list[i]);
   }
   if (size)
    kfree(addr, size);
   return (KERN_RESOURCE_SHORTAGE);
  }

  bcopy((void *) addr, (void *) newaddr, size_needed);
  kfree(addr, size);

  addr = newaddr;
  size = size_needed;
 }

 *thing_list = (void **)addr;
 *count = (unsigned int)size / sizeof(void *);

 return (KERN_SUCCESS);
}
