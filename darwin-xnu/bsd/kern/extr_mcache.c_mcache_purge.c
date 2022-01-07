
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mc_sync_lock; int mc_enable_cnt; } ;
typedef TYPE_1__ mcache_t ;


 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int mcache_bkt_purge (TYPE_1__*) ;

__attribute__((used)) static void
mcache_purge(void *arg)
{
 mcache_t *cp = arg;

 mcache_bkt_purge(cp);







 lck_mtx_lock_spin(&cp->mc_sync_lock);
 cp->mc_enable_cnt++;
 lck_mtx_unlock(&cp->mc_sync_lock);
}
