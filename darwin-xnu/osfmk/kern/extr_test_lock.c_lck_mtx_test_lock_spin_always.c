
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int TEST_MTX_LOCK_SPIN_ALWAYS_STATS ;
 int lck_mtx_lock_spin_always (int *) ;
 int mach_absolute_time () ;
 int test_mtx ;
 int update_test_mtx_stats (int ,int ,int ) ;

__attribute__((used)) static void
lck_mtx_test_lock_spin_always(void)
{
 uint64_t start;

 start = mach_absolute_time();

 lck_mtx_lock_spin_always(&test_mtx);

 update_test_mtx_stats(start, mach_absolute_time(), TEST_MTX_LOCK_SPIN_ALWAYS_STATS);
}
