
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* workq_threadreq_t ;
struct uthread {int uu_workq_pri; } ;
struct TYPE_4__ {scalar_t__ tr_qos; } ;


 scalar_t__ workq_pri_override (int ) ;
 scalar_t__ workq_thread_needs_params_change (TYPE_1__*,struct uthread*) ;

__attribute__((used)) static inline bool
workq_thread_needs_priority_change(workq_threadreq_t req, struct uthread *uth)
{
 if (workq_thread_needs_params_change(req, uth)) {
  return 1;
 }

 return req->tr_qos != workq_pri_override(uth->uu_workq_pri);
}
