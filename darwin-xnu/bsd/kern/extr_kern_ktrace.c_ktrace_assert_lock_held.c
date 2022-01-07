
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_MTX_ASSERT_OWNED ;
 int ktrace_mtx ;
 int ktrace_single_threaded ;
 int lck_mtx_assert (int ,int ) ;

void
ktrace_assert_lock_held(void)
{
 if (!ktrace_single_threaded) {
  lck_mtx_assert(ktrace_mtx, LCK_MTX_ASSERT_OWNED);
 }
}
