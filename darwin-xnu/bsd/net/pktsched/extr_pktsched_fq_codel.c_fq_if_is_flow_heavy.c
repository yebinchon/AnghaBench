
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fq_bytes; } ;
typedef TYPE_1__ fq_t ;
struct TYPE_7__ {TYPE_1__* fqs_large_flow; } ;
typedef TYPE_2__ fq_if_t ;


 scalar_t__ FQ_IF_LARGE_FLOW_BYTE_LIMIT ;
 int fq_empty (TYPE_1__*) ;

inline void
fq_if_is_flow_heavy(fq_if_t *fqs, fq_t *fq)
{
 fq_t *prev_fq;

 if (fqs->fqs_large_flow != ((void*)0) &&
     fqs->fqs_large_flow->fq_bytes < FQ_IF_LARGE_FLOW_BYTE_LIMIT)
  fqs->fqs_large_flow = ((void*)0);

 if (fq == ((void*)0) || fq->fq_bytes < FQ_IF_LARGE_FLOW_BYTE_LIMIT)
  return;

 prev_fq = fqs->fqs_large_flow;
 if (prev_fq == ((void*)0)) {
  if (!fq_empty(fq))
   fqs->fqs_large_flow = fq;
  return;
 } else if (fq->fq_bytes > prev_fq->fq_bytes) {
  fqs->fqs_large_flow = fq;
 }
}
