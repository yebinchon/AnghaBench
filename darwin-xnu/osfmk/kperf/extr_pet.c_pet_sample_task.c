
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ thread_t ;
typedef int task_t ;
struct kperf_context {int cur_pid; int cur_task; } ;
typedef scalar_t__ kern_return_t ;
struct TYPE_2__ {int logical_cpu_max; } ;


 int BUF_INFO (int ,int ,scalar_t__) ;
 int BUF_VERB (int,...) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int ERR_THREAD ;
 scalar_t__ KERN_SUCCESS ;
 int LCK_MTX_ASSERT_OWNED ;
 int PERF_PET_ERROR ;
 int PERF_PET_SAMPLE_TASK ;
 int SAMPLE_FLAG_TASK_ONLY ;
 scalar_t__ THREAD_NULL ;
 int assert (int) ;
 int kernel_task ;
 scalar_t__ kperf_action_has_task (int ) ;
 int kperf_action_has_thread (int ) ;
 int kperf_sample (int ,struct kperf_context*,int ,int ) ;
 scalar_t__* kperf_tid_on_cpus ;
 int lck_mtx_assert (int ,int ) ;
 TYPE_1__ machine_info ;
 int pet_action_id ;
 int pet_lock ;
 int pet_sample ;
 int pet_sample_thread (int,int ,scalar_t__,int ) ;
 scalar_t__* pet_threads ;
 unsigned int pet_threads_count ;
 scalar_t__ pet_threads_prepare (int ) ;
 int task_pid (int ) ;
 int task_resume_internal (int ) ;
 scalar_t__ task_suspend_internal (int ) ;
 int thread_deallocate (scalar_t__) ;
 scalar_t__ thread_tid (scalar_t__) ;

__attribute__((used)) static void
pet_sample_task(task_t task, uint32_t idle_rate)
{
 lck_mtx_assert(pet_lock, LCK_MTX_ASSERT_OWNED);

 BUF_VERB(PERF_PET_SAMPLE_TASK | DBG_FUNC_START);

 int pid = task_pid(task);
 if (kperf_action_has_task(pet_action_id)) {
  struct kperf_context ctx = {
   .cur_task = task,
   .cur_pid = pid,
  };

  kperf_sample(pet_sample, &ctx, pet_action_id, SAMPLE_FLAG_TASK_ONLY);
 }

 if (!kperf_action_has_thread(pet_action_id)) {
  BUF_VERB(PERF_PET_SAMPLE_TASK | DBG_FUNC_END);
  return;
 }

 kern_return_t kr = KERN_SUCCESS;





 bool needs_suspend = task != kernel_task;
 if (needs_suspend) {
  kr = task_suspend_internal(task);
  if (kr != KERN_SUCCESS) {
   BUF_VERB(PERF_PET_SAMPLE_TASK | DBG_FUNC_END, 1);
   return;
  }
  needs_suspend = 1;
 }

 kr = pet_threads_prepare(task);
 if (kr != KERN_SUCCESS) {
  BUF_INFO(PERF_PET_ERROR, ERR_THREAD, kr);
  goto out;
 }

 for (unsigned int i = 0; i < pet_threads_count; i++) {
  thread_t thread = pet_threads[i];
  assert(thread != THREAD_NULL);




  int cpu = 0;
  for (cpu = 0; cpu < machine_info.logical_cpu_max; cpu++) {
   if (kperf_tid_on_cpus[cpu] == thread_tid(thread)) {
    break;
   }
  }


  if (cpu == machine_info.logical_cpu_max) {
   pet_sample_thread(pid, task, thread, idle_rate);
  }

  thread_deallocate(pet_threads[i]);
 }

out:
 if (needs_suspend) {
  task_resume_internal(task);
 }

 BUF_VERB(PERF_PET_SAMPLE_TASK | DBG_FUNC_END, pet_threads_count);
}
