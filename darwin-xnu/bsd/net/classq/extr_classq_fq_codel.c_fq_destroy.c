
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fq_flags; scalar_t__ fq_bytes; } ;
typedef TYPE_1__ fq_t ;


 int FQF_NEW_FLOW ;
 int FQF_OLD_FLOW ;
 int VERIFY (int) ;
 int flowq_cache ;
 int fq_empty (TYPE_1__*) ;
 int mcache_free (int ,TYPE_1__*) ;

void
fq_destroy(fq_t *fq)
{
 VERIFY(fq_empty(fq));
 VERIFY(!(fq->fq_flags & (FQF_NEW_FLOW | FQF_OLD_FLOW)));
 VERIFY(fq->fq_bytes == 0);
 mcache_free(flowq_cache, fq);
}
