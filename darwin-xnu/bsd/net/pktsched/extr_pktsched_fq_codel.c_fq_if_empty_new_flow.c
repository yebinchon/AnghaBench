
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int fq_flags; } ;
typedef TYPE_2__ fq_t ;
struct TYPE_8__ {int fcl_oldflows_cnt; int fcl_newflows_cnt; } ;
struct TYPE_10__ {TYPE_1__ fcl_stat; int fcl_old_flows; int fcl_new_flows; } ;
typedef TYPE_3__ fq_if_classq_t ;


 int FQF_NEW_FLOW ;
 int FQF_OLD_FLOW ;
 int STAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int STAILQ_REMOVE (int *,TYPE_2__*,int ,int ) ;
 int flowq ;
 int fq_actlink ;

__attribute__((used)) static void
fq_if_empty_new_flow(fq_t *fq, fq_if_classq_t *fq_cl, bool add_to_old)
{

 STAILQ_REMOVE(&fq_cl->fcl_new_flows, fq,
     flowq, fq_actlink);
 fq->fq_flags &= ~FQF_NEW_FLOW;
 fq_cl->fcl_stat.fcl_newflows_cnt--;

 if (add_to_old) {
  STAILQ_INSERT_TAIL(&fq_cl->fcl_old_flows, fq,
      fq_actlink);
  fq->fq_flags |= FQF_OLD_FLOW;
  fq_cl->fcl_stat.fcl_oldflows_cnt++;
 }
}
