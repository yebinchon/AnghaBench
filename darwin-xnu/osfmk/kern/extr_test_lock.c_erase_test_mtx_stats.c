
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
struct lck_mtx_test_stats_elem {int lock; int min; scalar_t__ max; scalar_t__ avg; scalar_t__ tot; scalar_t__ samples; } ;


 size_t TEST_MTX_MAX_STATS ;
 int assert (int) ;
 struct lck_mtx_test_stats_elem* lck_mtx_test_stats ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;

__attribute__((used)) static void
erase_test_mtx_stats(
 uint type)
{
 assert(type < TEST_MTX_MAX_STATS);
 struct lck_mtx_test_stats_elem* stat = &lck_mtx_test_stats[type];

 lck_spin_lock(&stat->lock);

 stat->samples = 0;
 stat->tot = 0;
 stat->avg = 0;
 stat->max = 0;
 stat->min = ~0;

 lck_spin_unlock(&stat->lock);
}
