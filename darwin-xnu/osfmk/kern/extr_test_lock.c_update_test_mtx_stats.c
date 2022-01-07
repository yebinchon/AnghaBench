
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef size_t uint ;
struct lck_mtx_test_stats_elem {int samples; int tot; int avg; scalar_t__ max; scalar_t__ min; int lock; } ;


 size_t TEST_MTX_MAX_STATS ;
 scalar_t__ TRUE ;
 int assert (int) ;
 scalar_t__ atomic_load (int *) ;
 int enabled ;
 struct lck_mtx_test_stats_elem* lck_mtx_test_stats ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;

__attribute__((used)) static void
update_test_mtx_stats(
 uint64_t start,
 uint64_t end,
 uint type)
{
 if (atomic_load(&enabled) == TRUE) {
  assert(type < TEST_MTX_MAX_STATS);
  assert(start <= end);

  uint64_t elapsed = end - start;
  struct lck_mtx_test_stats_elem* stat = &lck_mtx_test_stats[type];

  lck_spin_lock(&stat->lock);

  stat->samples++;
  stat->tot += elapsed;
  stat->avg = stat->tot / stat->samples;
  if (stat->max < elapsed)
   stat->max = elapsed;
  if (stat->min > elapsed)
   stat->min = elapsed;
  lck_spin_unlock(&stat->lock);
 }
}
