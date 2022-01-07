
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int LCK_MTX_ASSERT_OWNED ;
 int SYS_OVERRIDE_CPU_THROTTLE ;
 int SYS_OVERRIDE_FAST_JETSAM ;
 int SYS_OVERRIDE_IO_THROTTLE ;
 int assert (int) ;
 scalar_t__ cpu_throttle_assert_cnt ;
 scalar_t__ fast_jetsam_assert_cnt ;
 scalar_t__ io_throttle_assert_cnt ;
 int lck_mtx_assert (int *,int ) ;
 int sys_override_lock ;
 int system_override_callouts (int,int) ;

__attribute__((used)) static void
system_override_end(uint64_t flags)
{

 lck_mtx_assert(&sys_override_lock, LCK_MTX_ASSERT_OWNED);

 if (flags & SYS_OVERRIDE_IO_THROTTLE) {
  assert(io_throttle_assert_cnt > 0);
  io_throttle_assert_cnt--;
  if (io_throttle_assert_cnt == 0) {
   system_override_callouts(SYS_OVERRIDE_IO_THROTTLE, 0);
  }
 }

 if (flags & SYS_OVERRIDE_CPU_THROTTLE) {
  assert(cpu_throttle_assert_cnt > 0);
  cpu_throttle_assert_cnt--;
  if (cpu_throttle_assert_cnt == 0) {
   system_override_callouts(SYS_OVERRIDE_CPU_THROTTLE, 0);
  }
 }

 if (flags & SYS_OVERRIDE_FAST_JETSAM) {
  assert(fast_jetsam_assert_cnt > 0);
  fast_jetsam_assert_cnt--;
  if (fast_jetsam_assert_cnt == 0) {
   system_override_callouts(SYS_OVERRIDE_FAST_JETSAM, 0);
  }
 }

}
