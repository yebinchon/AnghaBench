
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kperf_sample {int dummy; } ;


 int FALSE ;
 int LCK_MTX_ASSERT_OWNED ;
 int assert (int) ;
 int kfree (int *,int) ;
 int lck_mtx_assert (int ,int ) ;
 int pet_initted ;
 int pet_lock ;
 int pet_running ;
 int * pet_sample ;
 int * pet_tasks ;
 scalar_t__ pet_tasks_count ;
 scalar_t__ pet_tasks_size ;
 int * pet_threads ;
 scalar_t__ pet_threads_count ;
 scalar_t__ pet_threads_size ;

void
pet_stop(void)
{
 lck_mtx_assert(pet_lock, LCK_MTX_ASSERT_OWNED);

 if (!pet_initted) {
  return;
 }

 if (pet_tasks != ((void*)0)) {
  assert(pet_tasks_size != 0);
  kfree(pet_tasks, pet_tasks_size);

  pet_tasks = ((void*)0);
  pet_tasks_size = 0;
  pet_tasks_count = 0;
 }

 if (pet_threads != ((void*)0)) {
  assert(pet_threads_size != 0);
  kfree(pet_threads, pet_threads_size);

  pet_threads = ((void*)0);
  pet_threads_size = 0;
  pet_threads_count = 0;
 }

 if (pet_sample != ((void*)0)) {
  kfree(pet_sample, sizeof(struct kperf_sample));
  pet_sample = ((void*)0);
 }

 pet_running = FALSE;
}
