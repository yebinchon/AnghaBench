
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int thread_policy_t ;
struct TYPE_3__ {int affinity_tag; } ;
typedef TYPE_1__ thread_affinity_policy_data_t ;
struct thread {int dummy; } ;
typedef int policy ;
typedef int kern_return_t ;


 int THREAD_AFFINITY_POLICY ;
 int THREAD_AFFINITY_POLICY_COUNT ;
 int bzero (TYPE_1__*,int) ;
 int thread_policy_set (struct thread*,int ,int ,int ) ;

__attribute__((used)) static kern_return_t
dlil_affinity_set(struct thread *tp, u_int32_t tag)
{
 thread_affinity_policy_data_t policy;

 bzero(&policy, sizeof (policy));
 policy.affinity_tag = tag;
 return (thread_policy_set(tp, THREAD_AFFINITY_POLICY,
     (thread_policy_t)&policy, THREAD_AFFINITY_POLICY_COUNT));
}
