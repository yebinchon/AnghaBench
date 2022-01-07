
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fq_mbufq; scalar_t__ fq_ptype; } ;
typedef TYPE_1__ fq_t ;
typedef scalar_t__ classq_pkt_type_t ;


 int LOG_ERR ;
 int MBUFQ_INIT (int *) ;
 int MCR_SLEEP ;
 scalar_t__ QP_MBUF ;
 int bzero (TYPE_1__*,int ) ;
 int flowq_cache ;
 int flowq_size ;
 int log (int ,char*) ;
 TYPE_1__* mcache_alloc (int ,int ) ;

fq_t *
fq_alloc(classq_pkt_type_t ptype)
{
 fq_t *fq = ((void*)0);
 fq = mcache_alloc(flowq_cache, MCR_SLEEP);
 if (fq == ((void*)0)) {
  log(LOG_ERR, "%s: unable to allocate from flowq_cache\n");
  return (((void*)0));
 }

 bzero(fq, flowq_size);
 fq->fq_ptype = ptype;
 if (ptype == QP_MBUF) {
  MBUFQ_INIT(&fq->fq_mbufq);
 }
 return (fq);
}
