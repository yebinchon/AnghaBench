
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
struct TYPE_2__ {int kqr_suppressed; } ;
struct kqworkloop {scalar_t__ kqwl_owner; TYPE_1__ kqwl_request; } ;


 int TAILQ_EMPTY (int *) ;
 scalar_t__ THREAD_NULL ;
 scalar_t__ THREAD_QOS_UNSPECIFIED ;
 int assert (int ) ;
 scalar_t__ kqworkloop_owner_override (struct kqworkloop*) ;
 int thread_drop_ipc_override (scalar_t__) ;
 int thread_ends_owning_workloop (scalar_t__) ;

__attribute__((used)) static thread_t
kqworkloop_invalidate(struct kqworkloop *kqwl)
{
 thread_t cur_owner = kqwl->kqwl_owner;

 assert(TAILQ_EMPTY(&kqwl->kqwl_request.kqr_suppressed));
 if (cur_owner) {





  if (kqworkloop_owner_override(kqwl) != THREAD_QOS_UNSPECIFIED) {
   thread_drop_ipc_override(cur_owner);
  }
  thread_ends_owning_workloop(cur_owner);
  kqwl->kqwl_owner = THREAD_NULL;
 }

 return cur_owner;
}
