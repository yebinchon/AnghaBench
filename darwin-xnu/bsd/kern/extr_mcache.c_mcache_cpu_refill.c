
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cc_objs; int cc_bktsize; int cc_pobjs; int * cc_filled; int * cc_pfilled; } ;
typedef TYPE_1__ mcache_cpu_t ;
typedef int mcache_bkt_t ;


 int ASSERT (int) ;

__attribute__((used)) static void
mcache_cpu_refill(mcache_cpu_t *ccp, mcache_bkt_t *bkt, int objs)
{
 ASSERT((ccp->cc_filled == ((void*)0) && ccp->cc_objs == -1) ||
     (ccp->cc_filled && ccp->cc_objs + objs == ccp->cc_bktsize));
 ASSERT(ccp->cc_bktsize > 0);

 ccp->cc_pfilled = ccp->cc_filled;
 ccp->cc_pobjs = ccp->cc_objs;
 ccp->cc_filled = bkt;
 ccp->cc_objs = objs;
}
