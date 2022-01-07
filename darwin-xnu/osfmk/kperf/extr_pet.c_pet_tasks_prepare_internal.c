
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int task_t ;
typedef int * task_array_t ;
typedef int kern_return_t ;


 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int LCK_MTX_ASSERT_OWNED ;
 int assert (int) ;
 scalar_t__ kalloc (int) ;
 int kfree (int *,int) ;
 int lck_mtx_assert (int ,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int pet_lock ;
 int * pet_tasks ;
 int pet_tasks_size ;
 int tasks_count ;
 int tasks_threads_lock ;

__attribute__((used)) static kern_return_t
pet_tasks_prepare_internal(void)
{
 lck_mtx_assert(pet_lock, LCK_MTX_ASSERT_OWNED);

 vm_size_t tasks_size_needed = 0;

 for (;;) {
  lck_mtx_lock(&tasks_threads_lock);


  tasks_size_needed = tasks_count * sizeof(task_t);
  if (tasks_size_needed <= pet_tasks_size) {
   break;
  }


  lck_mtx_unlock(&tasks_threads_lock);


  if (tasks_size_needed > pet_tasks_size) {
   if (pet_tasks_size != 0) {
    kfree(pet_tasks, pet_tasks_size);
   }

   assert(tasks_size_needed > 0);
   pet_tasks_size = tasks_size_needed;

   pet_tasks = (task_array_t)kalloc(pet_tasks_size);
   if (pet_tasks == ((void*)0)) {
    pet_tasks_size = 0;
    return KERN_RESOURCE_SHORTAGE;
   }
  }
 }

 return KERN_SUCCESS;
}
