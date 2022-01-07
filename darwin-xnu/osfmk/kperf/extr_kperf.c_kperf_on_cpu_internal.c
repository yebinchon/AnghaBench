
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;


 int BUF_DATA (int ,int ,int) ;
 int PERF_TI_CSWITCH ;
 int get_threadtask (int ) ;
 scalar_t__ kperf_kdebug_cswitch ;
 scalar_t__ kperf_lazy_wait_action ;
 int kperf_lazy_wait_sample (int ,int ,uintptr_t*) ;
 scalar_t__ kperf_lightweight_pet_active ;
 int kperf_pet_on_cpu (int ,int ,uintptr_t*) ;
 int task_pid (int ) ;
 int thread_tid (int ) ;

void
kperf_on_cpu_internal(thread_t thread, thread_continue_t continuation,
                      uintptr_t *starting_fp)
{
 if (kperf_kdebug_cswitch) {

  int pid = task_pid(get_threadtask(thread));
  BUF_DATA(PERF_TI_CSWITCH, thread_tid(thread), pid);
 }
 if (kperf_lightweight_pet_active) {
  kperf_pet_on_cpu(thread, continuation, starting_fp);
 }
 if (kperf_lazy_wait_action != 0) {
  kperf_lazy_wait_sample(thread, continuation, starting_fp);
 }
}
