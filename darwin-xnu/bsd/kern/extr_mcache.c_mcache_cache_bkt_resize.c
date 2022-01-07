
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mc_bkt_lock; scalar_t__ mc_bkt_contention; scalar_t__ mc_bkt_contention_prev; TYPE_2__* cache_bkttype; scalar_t__ mc_chunksize; } ;
typedef TYPE_1__ mcache_t ;
struct TYPE_6__ {unsigned int bt_maxbuf; } ;
typedef TYPE_2__ mcache_bkttype_t ;


 scalar_t__ INT_MAX ;
 int MCACHE_LOCK (int *) ;
 int MCACHE_UNLOCK (int *) ;
 int mcache_bkt_purge (TYPE_1__*) ;
 int mcache_cache_enable (TYPE_1__*) ;

__attribute__((used)) static void
mcache_cache_bkt_resize(void *arg)
{
 mcache_t *cp = arg;
 mcache_bkttype_t *btp = cp->cache_bkttype;

 if ((unsigned int)cp->mc_chunksize < btp->bt_maxbuf) {
  mcache_bkt_purge(cp);






  MCACHE_LOCK(&cp->mc_bkt_lock);
  cp->cache_bkttype = ++btp;
  cp ->mc_bkt_contention_prev = cp->mc_bkt_contention + INT_MAX;
  MCACHE_UNLOCK(&cp->mc_bkt_lock);

  mcache_cache_enable(cp);
 }
}
