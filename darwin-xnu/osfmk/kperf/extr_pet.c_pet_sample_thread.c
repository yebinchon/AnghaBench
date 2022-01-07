
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
typedef int task_t ;
struct kperf_context {int cur_pid; int cur_task; TYPE_1__* cur_thread; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int kperf_pet_cnt; } ;


 int BUF_VERB (int) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int FALSE ;
 int LCK_MTX_ASSERT_OWNED ;
 int PERF_PET_SAMPLE_THREAD ;
 int SAMPLE_FLAG_EMPTY_CALLSTACK ;
 int SAMPLE_FLAG_IDLE_THREADS ;
 int SAMPLE_FLAG_THREAD_ONLY ;
 int kperf_sample (int ,struct kperf_context*,int ,int) ;
 scalar_t__ kperf_thread_get_dirty (TYPE_1__*) ;
 int kperf_thread_set_dirty (TYPE_1__*,int ) ;
 int lck_mtx_assert (int ,int ) ;
 int pet_action_id ;
 int pet_lock ;
 int pet_sample ;

__attribute__((used)) static void
pet_sample_thread(int pid, task_t task, thread_t thread, uint32_t idle_rate)
{
 lck_mtx_assert(pet_lock, LCK_MTX_ASSERT_OWNED);

 uint32_t sample_flags = SAMPLE_FLAG_IDLE_THREADS | SAMPLE_FLAG_THREAD_ONLY;

 BUF_VERB(PERF_PET_SAMPLE_THREAD | DBG_FUNC_START);


 struct kperf_context ctx = {
  .cur_thread = thread,
  .cur_task = task,
  .cur_pid = pid,
 };

 boolean_t thread_dirty = kperf_thread_get_dirty(thread);





 if (thread_dirty) {
  kperf_thread_set_dirty(thread, FALSE);
 } else if ((thread->kperf_pet_cnt % idle_rate) != 0) {
  sample_flags |= SAMPLE_FLAG_EMPTY_CALLSTACK;
 }
 thread->kperf_pet_cnt++;

 kperf_sample(pet_sample, &ctx, pet_action_id, sample_flags);

 BUF_VERB(PERF_PET_SAMPLE_THREAD | DBG_FUNC_END);
}
