
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* workq_threadreq_t ;
struct TYPE_7__ {int trp_flags; scalar_t__ trp_refillms; int trp_cpupercent; } ;
typedef TYPE_2__ workq_threadreq_param_t ;
typedef int uint64_t ;
struct uthread {int uu_workq_flags; } ;
struct TYPE_6__ {int tr_flags; } ;


 int NSEC_PER_SEC ;
 int THREAD_CPULIMIT_BLOCK ;
 int THREAD_CPULIMIT_DISABLE ;
 int TRP_CPUPERCENT ;
 int TR_FLAG_WL_PARAMS ;
 int UT_WORKQ_CPUPERCENT ;
 int assert (int) ;
 struct uthread* current_uthread () ;
 TYPE_2__ kqueue_threadreq_workloop_param (TYPE_1__*) ;
 int thread_set_cpulimit (int ,int ,int) ;

__attribute__((used)) static void
workq_thread_reset_cpupercent(workq_threadreq_t req, struct uthread *uth)
{
 assert(uth == current_uthread());
 workq_threadreq_param_t trp = { };

 if (req && (req->tr_flags & TR_FLAG_WL_PARAMS)) {
  trp = kqueue_threadreq_workloop_param(req);
 }

 if (uth->uu_workq_flags & UT_WORKQ_CPUPERCENT) {





  thread_set_cpulimit(THREAD_CPULIMIT_DISABLE, 0, 0);
  uth->uu_workq_flags &= ~UT_WORKQ_CPUPERCENT;
 }

 if (trp.trp_flags & TRP_CPUPERCENT) {
  thread_set_cpulimit(THREAD_CPULIMIT_BLOCK, trp.trp_cpupercent,
    (uint64_t)trp.trp_refillms * NSEC_PER_SEC);
  uth->uu_workq_flags |= UT_WORKQ_CPUPERCENT;
 }
}
