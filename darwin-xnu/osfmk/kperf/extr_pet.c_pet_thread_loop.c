
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;
typedef scalar_t__ uint64_t ;


 int BUF_INFO (int ,...) ;
 int PERF_PET_IDLE ;
 int PERF_PET_RUN ;
 int PERF_PET_THREAD ;
 int kperf_timer_pet_rearm (scalar_t__) ;
 int lck_mtx_lock (int ) ;
 scalar_t__ mach_absolute_time () ;
 int pet_lock ;
 int pet_thread_idle () ;
 int pet_thread_work_unit () ;

__attribute__((used)) __attribute__((noreturn))
static void
pet_thread_loop(void *param, wait_result_t wr)
{
#pragma unused(param, wr)
 uint64_t work_unit_ticks;

 BUF_INFO(PERF_PET_THREAD, 1);

 lck_mtx_lock(pet_lock);
 for (;;) {
  BUF_INFO(PERF_PET_IDLE);
  pet_thread_idle();

  BUF_INFO(PERF_PET_RUN);


  work_unit_ticks = mach_absolute_time();
  pet_thread_work_unit();
  work_unit_ticks = mach_absolute_time() - work_unit_ticks;


  kperf_timer_pet_rearm(work_unit_ticks);
 }
}
