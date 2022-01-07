
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int thread_policy_t ;
struct TYPE_3__ {int timeshare; } ;
typedef TYPE_1__ thread_extended_policy_data_t ;
struct TYPE_4__ {int affinity_tag; } ;
typedef TYPE_2__ thread_affinity_policy_data_t ;
typedef scalar_t__ kern_return_t ;


 int FALSE ;
 scalar_t__ KERN_SUCCESS ;
 int THREAD_AFFINITY_POLICY ;
 int THREAD_AFFINITY_POLICY_COUNT ;
 int THREAD_EXTENDED_POLICY ;
 int THREAD_EXTENDED_POLICY_COUNT ;
 scalar_t__ affinity ;
 int mach_thread_self () ;
 int printf (char*,scalar_t__) ;
 scalar_t__ thread_policy_set (int ,int ,int ,int ) ;
 int timeshare ;

__attribute__((used)) static void
thread_setup(int tag) {
 kern_return_t ret;
        thread_extended_policy_data_t epolicy;
        thread_affinity_policy_data_t policy;

 if (!timeshare) {
  epolicy.timeshare = FALSE;
  ret = thread_policy_set(
    mach_thread_self(), THREAD_EXTENDED_POLICY,
    (thread_policy_t) &epolicy,
    THREAD_EXTENDED_POLICY_COUNT);
  if (ret != KERN_SUCCESS)
   printf("thread_policy_set(THREAD_EXTENDED_POLICY) returned %d\n", ret);
 }

        if (affinity) {
                policy.affinity_tag = tag;
                ret = thread_policy_set(
                                mach_thread_self(), THREAD_AFFINITY_POLICY,
                                (thread_policy_t) &policy,
                                THREAD_AFFINITY_POLICY_COUNT);
                if (ret != KERN_SUCCESS)
                        printf("thread_policy_set(THREAD_AFFINITY_POLICY) returned %d\n", ret);
        }
}
