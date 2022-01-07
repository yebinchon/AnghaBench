
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ TRUE ;
 int hz ;
 int lck_mtx_convert_spin (int *) ;
 scalar_t__ mp_garbage_collecting ;
 scalar_t__ mp_ticking ;
 int mp_timeout ;
 int mp_timeout_lock ;
 scalar_t__ mp_timeout_run ;
 int timeout (int ,int *,int ) ;

__attribute__((used)) static void
mp_sched_timeout(void)
{
 LCK_MTX_ASSERT(&mp_timeout_lock, LCK_MTX_ASSERT_OWNED);

 if (!mp_timeout_run && (mp_garbage_collecting || mp_ticking)) {
  lck_mtx_convert_spin(&mp_timeout_lock);
  mp_timeout_run = TRUE;
  timeout(mp_timeout, ((void*)0), hz);
 }
}
