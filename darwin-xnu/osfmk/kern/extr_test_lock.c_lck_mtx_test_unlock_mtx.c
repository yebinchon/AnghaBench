
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int TEST_MTX_UNLOCK_MTX_STATS ;
 int lck_mtx_unlock (int *) ;
 int mach_absolute_time () ;
 int test_mtx ;
 int update_test_mtx_stats (int ,int ,int ) ;

__attribute__((used)) static void
lck_mtx_test_unlock_mtx(void)
{
 uint64_t start;

 start = mach_absolute_time();

 lck_mtx_unlock(&test_mtx);

 update_test_mtx_stats(start, mach_absolute_time(), TEST_MTX_UNLOCK_MTX_STATS);
}
