
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* workq_threadreq_t ;
struct TYPE_7__ {int trp_flags; int trp_pri; } ;
typedef TYPE_2__ workq_threadreq_param_t ;
typedef int thread_qos_t ;
struct TYPE_6__ {int tr_flags; int tr_qos; } ;


 int TRP_PRIORITY ;
 int TR_FLAG_WL_OUTSIDE_QOS ;
 int assert (int) ;
 TYPE_2__ kqueue_threadreq_workloop_param (TYPE_1__*) ;
 int thread_workq_pri_for_qos (int ) ;

__attribute__((used)) static inline int
workq_priority_for_req(workq_threadreq_t req)
{
 thread_qos_t qos = req->tr_qos;

 if (req->tr_flags & TR_FLAG_WL_OUTSIDE_QOS) {
  workq_threadreq_param_t trp = kqueue_threadreq_workloop_param(req);
  assert(trp.trp_flags & TRP_PRIORITY);
  return trp.trp_pri;
 }
 return thread_workq_pri_for_qos(qos);
}
