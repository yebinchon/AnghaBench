
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_policy_t ;
struct TYPE_2__ {int affinity_tag; } ;
typedef TYPE_1__ thread_affinity_policy_data_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int THREAD_AFFINITY_POLICY ;
 int THREAD_AFFINITY_POLICY_COUNT ;
 scalar_t__ affinity ;
 int mach_thread_self () ;
 int printf (char*,scalar_t__) ;
 scalar_t__ thread_policy_set (int ,int ,int ,int ) ;

void
affinity_set(int tag)
{
 kern_return_t ret;
 thread_affinity_policy_data_t policy;
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
