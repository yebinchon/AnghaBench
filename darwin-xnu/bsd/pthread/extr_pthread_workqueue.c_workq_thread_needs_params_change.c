
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* workq_threadreq_t ;
struct TYPE_11__ {int trp_flags; scalar_t__ trp_pri; scalar_t__ trp_pol; int trp_value; } ;
typedef TYPE_4__ workq_threadreq_param_t ;
typedef int uint16_t ;
struct TYPE_8__ {int workloop_params; } ;
struct TYPE_9__ {TYPE_1__ uus_workq_park_data; } ;
struct uthread {TYPE_2__ uu_save; } ;
struct TYPE_10__ {int tr_flags; } ;


 int TRP_CPUPERCENT ;
 int TRP_POLICY ;
 int TRP_PRIORITY ;
 int TR_FLAG_WL_PARAMS ;
 TYPE_4__ kqueue_threadreq_workloop_param (TYPE_3__*) ;

__attribute__((used)) static inline bool
workq_thread_needs_params_change(workq_threadreq_t req, struct uthread *uth)
{
 workq_threadreq_param_t cur_trp, req_trp = { };

 cur_trp.trp_value = uth->uu_save.uus_workq_park_data.workloop_params;
 if (req->tr_flags & TR_FLAG_WL_PARAMS) {
  req_trp = kqueue_threadreq_workloop_param(req);
 }





 uint16_t cur_flags = (cur_trp.trp_flags & ~TRP_CPUPERCENT);
 uint16_t req_flags = (req_trp.trp_flags & ~TRP_CPUPERCENT);

 if (!req_flags && !cur_flags) {
  return 0;
 }

 if (req_flags != cur_flags) {
  return 1;
 }

 if ((req_flags & TRP_PRIORITY) && req_trp.trp_pri != cur_trp.trp_pri) {
  return 1;
 }

 if ((req_flags & TRP_POLICY) && cur_trp.trp_pol != cur_trp.trp_pol) {
  return 1;
 }

 return 0;
}
