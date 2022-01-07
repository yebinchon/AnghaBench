
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mc_bkt_lock; int * cache_bkttype; int mc_bkt_contention; } ;
typedef TYPE_1__ mcache_t ;
typedef int mcache_bkttype_t ;
struct TYPE_8__ {scalar_t__ bl_total; scalar_t__ bl_min; int bl_alloc; TYPE_3__* bl_list; } ;
typedef TYPE_2__ mcache_bktlist_t ;
struct TYPE_9__ {struct TYPE_9__* bkt_next; } ;
typedef TYPE_3__ mcache_bkt_t ;


 int MCACHE_LOCK (int *) ;
 int MCACHE_LOCK_TRY (int *) ;
 int MCACHE_UNLOCK (int *) ;

__attribute__((used)) static mcache_bkt_t *
mcache_bkt_alloc(mcache_t *cp, mcache_bktlist_t *blp, mcache_bkttype_t **btp)
{
 mcache_bkt_t *bkt;

 if (!MCACHE_LOCK_TRY(&cp->mc_bkt_lock)) {





  MCACHE_LOCK(&cp->mc_bkt_lock);
  cp->mc_bkt_contention++;
 }

 if ((bkt = blp->bl_list) != ((void*)0)) {
  blp->bl_list = bkt->bkt_next;
  if (--blp->bl_total < blp->bl_min)
   blp->bl_min = blp->bl_total;
  blp->bl_alloc++;
 }

 if (btp != ((void*)0))
  *btp = cp->cache_bkttype;

 MCACHE_UNLOCK(&cp->mc_bkt_lock);

 return (bkt);
}
