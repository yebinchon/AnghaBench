
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fq_codel_flowstats {int fqst_flags; int fqst_flowhash; int fqst_bytes; int fqst_min_qdelay; } ;
struct TYPE_5__ {int fq_flags; int fq_flowhash; int fq_bytes; int fq_min_qdelay; } ;
typedef TYPE_1__ fq_t ;
struct TYPE_6__ {TYPE_1__* fqs_large_flow; } ;
typedef TYPE_2__ fq_if_t ;


 int FQF_DELAY_HIGH ;
 int FQF_FLOWCTL_ON ;
 int FQF_NEW_FLOW ;
 int FQF_OLD_FLOW ;
 int FQ_FLOWSTATS_DELAY_HIGH ;
 int FQ_FLOWSTATS_FLOWCTL_ON ;
 int FQ_FLOWSTATS_LARGE_FLOW ;
 int FQ_FLOWSTATS_NEW_FLOW ;
 int FQ_FLOWSTATS_OLD_FLOW ;
 int bzero (struct fq_codel_flowstats*,int) ;

__attribute__((used)) static void
fq_export_flowstats(fq_if_t *fqs, fq_t *fq,
    struct fq_codel_flowstats *flowstat)
{
 bzero(flowstat, sizeof (*flowstat));
 flowstat->fqst_min_qdelay = fq->fq_min_qdelay;
 flowstat->fqst_bytes = fq->fq_bytes;
 flowstat->fqst_flowhash = fq->fq_flowhash;
 if (fq->fq_flags & FQF_NEW_FLOW)
  flowstat->fqst_flags |= FQ_FLOWSTATS_NEW_FLOW;
 if (fq->fq_flags & FQF_OLD_FLOW)
  flowstat->fqst_flags |= FQ_FLOWSTATS_OLD_FLOW;
 if (fq->fq_flags & FQF_DELAY_HIGH)
  flowstat->fqst_flags |= FQ_FLOWSTATS_DELAY_HIGH;
 if (fq->fq_flags & FQF_FLOWCTL_ON)
  flowstat->fqst_flags |= FQ_FLOWSTATS_FLOWCTL_ON;
 if (fqs->fqs_large_flow == fq)
  flowstat->fqst_flags |= FQ_FLOWSTATS_LARGE_FLOW;
}
