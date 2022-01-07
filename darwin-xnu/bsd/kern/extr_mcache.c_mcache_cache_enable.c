
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mc_sync_lock; scalar_t__ mc_enable_cnt; scalar_t__ mc_purge_cnt; } ;
typedef TYPE_1__ mcache_t ;


 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int mcache_cache_bkt_enable (TYPE_1__*) ;

__attribute__((used)) static void
mcache_cache_enable(void *arg)
{
 mcache_t *cp = arg;

 lck_mtx_lock_spin(&cp->mc_sync_lock);
 cp->mc_purge_cnt = 0;
 cp->mc_enable_cnt = 0;
 lck_mtx_unlock(&cp->mc_sync_lock);

 mcache_cache_bkt_enable(cp);
}
