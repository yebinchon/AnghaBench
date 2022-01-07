
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int bl_min; int bl_reaplimit; } ;
struct TYPE_9__ {TYPE_7__ mc_empty; TYPE_7__ mc_full; } ;
typedef TYPE_1__ mcache_t ;
struct TYPE_10__ {int bt_bktsize; } ;
typedef TYPE_2__ mcache_bkttype_t ;
typedef int mcache_bkt_t ;


 long MIN (int ,int ) ;
 int * mcache_bkt_alloc (TYPE_1__*,TYPE_7__*,TYPE_2__**) ;
 int mcache_bkt_destroy (TYPE_1__*,TYPE_2__*,int *,int ) ;

__attribute__((used)) static void
mcache_bkt_ws_reap(mcache_t *cp)
{
 long reap;
 mcache_bkt_t *bkt;
 mcache_bkttype_t *btp;

 reap = MIN(cp->mc_full.bl_reaplimit, cp->mc_full.bl_min);
 while (reap-- &&
     (bkt = mcache_bkt_alloc(cp, &cp->mc_full, &btp)) != ((void*)0))
  mcache_bkt_destroy(cp, btp, bkt, btp->bt_bktsize);

 reap = MIN(cp->mc_empty.bl_reaplimit, cp->mc_empty.bl_min);
 while (reap-- &&
     (bkt = mcache_bkt_alloc(cp, &cp->mc_empty, &btp)) != ((void*)0))
  mcache_bkt_destroy(cp, btp, bkt, 0);
}
