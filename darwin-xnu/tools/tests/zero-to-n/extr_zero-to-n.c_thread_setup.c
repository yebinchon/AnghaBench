
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int period; int constraint; int computation; int preemptible; } ;
typedef TYPE_1__ thread_time_constraint_policy_data_t ;
typedef int thread_policy_t ;
struct TYPE_4__ {int affinity_tag; } ;
typedef TYPE_2__ thread_affinity_policy_data_t ;
struct sched_param {int sched_priority; } ;
typedef int kern_return_t ;
typedef int errno_t ;


 int COMPUTATION_NANOS ;
 int CONSTRAINT_NANOS ;
 int EX_OSERR ;
 int EX_USAGE ;



 int SCHED_OTHER ;
 int SCHED_RR ;
 int THREAD_AFFINITY_POLICY ;
 int THREAD_AFFINITY_POLICY_COUNT ;
 int THREAD_TIME_CONSTRAINT_POLICY ;
 int THREAD_TIME_CONSTRAINT_POLICY_COUNT ;
 int errc (int ,int ,char*,...) ;
 int errx (int ,char*,int) ;
 scalar_t__ g_do_affinity ;
 int g_policy ;
 scalar_t__ g_priority ;
 int mach_assert_zero_t (int,int ) ;
 int mach_thread_self () ;
 int nanos_to_abs (int ) ;
 int pthread_self () ;
 int pthread_set_fixedpriority_self () ;
 int pthread_setschedparam (int ,int,struct sched_param*) ;
 int thread_policy_set (int ,int ,int ,int ) ;

__attribute__((used)) static int
thread_setup(uint32_t my_id)
{
 kern_return_t kr;
 errno_t ret;
 thread_time_constraint_policy_data_t pol;

 if (g_priority) {
  int policy = SCHED_OTHER;
  if (g_policy == 130)
   policy = SCHED_RR;

  struct sched_param param = {.sched_priority = (int)g_priority};
  if ((ret = pthread_setschedparam(pthread_self(), policy, &param)))
   errc(EX_OSERR, ret, "pthread_setschedparam: %d", my_id);
 }

 switch (g_policy) {
  case 128:
   break;
  case 129:

   pol.period = 100000;
   pol.constraint = (uint32_t) nanos_to_abs(CONSTRAINT_NANOS);
   pol.computation = (uint32_t) nanos_to_abs(COMPUTATION_NANOS);
   pol.preemptible = 0;

   kr = thread_policy_set(mach_thread_self(), THREAD_TIME_CONSTRAINT_POLICY,
                          (thread_policy_t) &pol, THREAD_TIME_CONSTRAINT_POLICY_COUNT);
   mach_assert_zero_t(my_id, kr);
   break;
  case 130:
   ret = pthread_set_fixedpriority_self();
   if (ret) errc(EX_OSERR, ret, "pthread_set_fixedpriority_self");
   break;
  default:
   errx(EX_USAGE, "invalid policy type %d", g_policy);
 }

 if (g_do_affinity) {
  thread_affinity_policy_data_t affinity;

  affinity.affinity_tag = my_id % 2;

  kr = thread_policy_set(mach_thread_self(), THREAD_AFFINITY_POLICY,
                         (thread_policy_t)&affinity, THREAD_AFFINITY_POLICY_COUNT);
  mach_assert_zero_t(my_id, kr);
 }

 return 0;
}
