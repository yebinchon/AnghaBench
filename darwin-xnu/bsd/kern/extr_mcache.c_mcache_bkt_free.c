
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mc_bkt_lock; } ;
typedef TYPE_1__ mcache_t ;
struct TYPE_8__ {int bl_total; TYPE_3__* bl_list; } ;
typedef TYPE_2__ mcache_bktlist_t ;
struct TYPE_9__ {struct TYPE_9__* bkt_next; } ;
typedef TYPE_3__ mcache_bkt_t ;


 int MCACHE_LOCK (int *) ;
 int MCACHE_UNLOCK (int *) ;

__attribute__((used)) static void
mcache_bkt_free(mcache_t *cp, mcache_bktlist_t *blp, mcache_bkt_t *bkt)
{
 MCACHE_LOCK(&cp->mc_bkt_lock);

 bkt->bkt_next = blp->bl_list;
 blp->bl_list = bkt;
 blp->bl_total++;

 MCACHE_UNLOCK(&cp->mc_bkt_lock);
}
