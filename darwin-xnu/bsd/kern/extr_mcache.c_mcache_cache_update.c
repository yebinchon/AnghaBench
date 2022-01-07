
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int mc_flags; int mc_bkt_lock; scalar_t__ mc_bkt_contention; scalar_t__ mc_bkt_contention_prev; TYPE_1__* cache_bkttype; scalar_t__ mc_chunksize; int mc_sync_lock; scalar_t__ mc_enable_cnt; } ;
typedef TYPE_2__ mcache_t ;
struct TYPE_6__ {unsigned int bt_maxbuf; } ;


 int LCK_MTX_ASSERT_OWNED ;
 int MCACHE_LOCK (int *) ;
 int MCACHE_UNLOCK (int *) ;
 int MCF_NOCPUCACHE ;
 int lck_mtx_assert (int ,int ) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int mcache_bkt_contention ;
 int mcache_bkt_ws_update (TYPE_2__*) ;
 int mcache_cache_bkt_resize ;
 int mcache_cache_enable ;
 int mcache_dispatch (int ,TYPE_2__*) ;
 int mcache_llock ;

__attribute__((used)) static void
mcache_cache_update(mcache_t *cp)
{
 int need_bkt_resize = 0;
 int need_bkt_reenable = 0;

 lck_mtx_assert(mcache_llock, LCK_MTX_ASSERT_OWNED);

 mcache_bkt_ws_update(cp);







 lck_mtx_lock_spin(&cp->mc_sync_lock);
 if (!(cp->mc_flags & MCF_NOCPUCACHE) && cp->mc_enable_cnt)
  need_bkt_reenable = 1;
 lck_mtx_unlock(&cp->mc_sync_lock);

 MCACHE_LOCK(&cp->mc_bkt_lock);






 if ((unsigned int)cp->mc_chunksize < cp->cache_bkttype->bt_maxbuf &&
     (int)(cp->mc_bkt_contention - cp->mc_bkt_contention_prev) >
     mcache_bkt_contention && !need_bkt_reenable)
  need_bkt_resize = 1;

 cp ->mc_bkt_contention_prev = cp->mc_bkt_contention;
 MCACHE_UNLOCK(&cp->mc_bkt_lock);

 if (need_bkt_resize)
  mcache_dispatch(mcache_cache_bkt_resize, cp);
 else if (need_bkt_reenable)
  mcache_dispatch(mcache_cache_enable, cp);
}
