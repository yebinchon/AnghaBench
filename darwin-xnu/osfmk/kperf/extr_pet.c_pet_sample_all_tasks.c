
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int task_t ;
typedef scalar_t__ kern_return_t ;


 int BUF_INFO (int,...) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int ERR_TASK ;
 scalar_t__ KERN_SUCCESS ;
 int LCK_MTX_ASSERT_OWNED ;
 int PERF_PET_ERROR ;
 int PERF_PET_SAMPLE ;
 int lck_mtx_assert (int ,int ) ;
 int pet_lock ;
 int pet_sample_task (int ,int ) ;
 int * pet_tasks ;
 unsigned int pet_tasks_count ;
 scalar_t__ pet_tasks_prepare () ;
 int task_deallocate (int ) ;

__attribute__((used)) static void
pet_sample_all_tasks(uint32_t idle_rate)
{
 lck_mtx_assert(pet_lock, LCK_MTX_ASSERT_OWNED);

 BUF_INFO(PERF_PET_SAMPLE | DBG_FUNC_START);

 kern_return_t kr = pet_tasks_prepare();
 if (kr != KERN_SUCCESS) {
  BUF_INFO(PERF_PET_ERROR, ERR_TASK, kr);
  BUF_INFO(PERF_PET_SAMPLE | DBG_FUNC_END, 0);
  return;
 }

 for (unsigned int i = 0; i < pet_tasks_count; i++) {
  task_t task = pet_tasks[i];

  pet_sample_task(task, idle_rate);
 }

 for(unsigned int i = 0; i < pet_tasks_count; i++) {
  task_deallocate(pet_tasks[i]);
 }

 BUF_INFO(PERF_PET_SAMPLE | DBG_FUNC_END, pet_tasks_count);
}
