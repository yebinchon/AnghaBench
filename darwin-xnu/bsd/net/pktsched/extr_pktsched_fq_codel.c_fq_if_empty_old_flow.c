
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ fq_bytes; int fq_flags; } ;
typedef TYPE_2__ fq_t ;
typedef int fq_if_t ;
struct TYPE_9__ {int fcl_oldflows_cnt; } ;
struct TYPE_11__ {TYPE_1__ fcl_stat; int fcl_old_flows; } ;
typedef TYPE_3__ fq_if_classq_t ;


 int FQF_OLD_FLOW ;
 int STAILQ_REMOVE (int *,TYPE_2__*,int ,int ) ;
 int VERIFY (int) ;
 int flowq ;
 int fq_actlink ;
 int fq_if_destroy_flow (int *,TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void
fq_if_empty_old_flow(fq_if_t *fqs, fq_if_classq_t *fq_cl, fq_t *fq,
    bool remove_hash)
{




 STAILQ_REMOVE(&fq_cl->fcl_old_flows, fq, flowq,
     fq_actlink);
 fq->fq_flags &= ~FQF_OLD_FLOW;
 fq_cl->fcl_stat.fcl_oldflows_cnt--;
 VERIFY(fq->fq_bytes == 0);

 if (remove_hash) {

  fq_if_destroy_flow(fqs, fq_cl, fq);
 }
}
