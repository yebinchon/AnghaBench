
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_MTX_MAX_STATS ;
 int erase_test_mtx_stats (int) ;

void
erase_all_test_mtx_stats(void)
{
 int i;
 for (i = 0; i < TEST_MTX_MAX_STATS; i++) {
  erase_test_mtx_stats(i);
 }
}
