
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_t ;
typedef int thread_policy_t ;
struct TYPE_2__ {int affinity_tag; } ;
typedef TYPE_1__ thread_affinity_policy_data_t ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ KERN_SUCCESS ;
 int THREAD_AFFINITY_POLICY ;
 int THREAD_AFFINITY_POLICY_COUNT ;
 int exit (int) ;
 int printf (char*,scalar_t__) ;
 scalar_t__ thread_policy_get (int ,int ,int ,int *,int *) ;

int
thread_tag_get(thread_t thread)
{
 kern_return_t ret;
 boolean_t get_default = FALSE;
 thread_affinity_policy_data_t policy;
 mach_msg_type_number_t count = THREAD_AFFINITY_POLICY_COUNT;

 ret = thread_policy_get(
   thread, THREAD_AFFINITY_POLICY,
   (thread_policy_t) &policy, &count, &get_default);
 if (ret != KERN_SUCCESS) {
  printf("thread_policy_set(1) returned %d\n", ret);
  exit(1);
 }

 return policy.affinity_tag;
}
