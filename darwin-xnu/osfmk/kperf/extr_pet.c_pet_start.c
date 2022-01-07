
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kperf_sample {int dummy; } ;


 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ TRUE ;
 int kalloc (int) ;
 int lck_mtx_assert (int ,int ) ;
 int pet_lock ;
 scalar_t__ pet_running ;
 int pet_sample ;

void
pet_start(void)
{
 lck_mtx_assert(pet_lock, LCK_MTX_ASSERT_OWNED);

 if (pet_running) {
  return;
 }

 pet_sample = kalloc(sizeof(struct kperf_sample));
 if (!pet_sample) {
  return;
 }

 pet_running = TRUE;
}
