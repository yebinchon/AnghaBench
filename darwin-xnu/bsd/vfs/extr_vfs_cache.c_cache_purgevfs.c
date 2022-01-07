
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nchashhead {struct namecache* lh_first; } ;
struct TYPE_3__ {struct namecache* le_next; } ;
struct namecache {TYPE_2__* nc_dvp; TYPE_1__ nc_hash; } ;
struct mount {int dummy; } ;
struct TYPE_4__ {struct mount* v_mount; } ;


 int NAME_CACHE_LOCK () ;
 int NAME_CACHE_UNLOCK () ;
 int cache_delete (struct namecache*,int ) ;
 int nchash ;
 struct nchashhead* nchashtbl ;

void
cache_purgevfs(struct mount *mp)
{
 struct nchashhead *ncpp;
 struct namecache *ncp;

 NAME_CACHE_LOCK();

 for (ncpp = &nchashtbl[nchash - 1]; ncpp >= nchashtbl; ncpp--) {
restart:
  for (ncp = ncpp->lh_first; ncp != 0; ncp = ncp->nc_hash.le_next) {
   if (ncp->nc_dvp->v_mount == mp) {
    cache_delete(ncp, 0);
    goto restart;
   }
  }
 }
 NAME_CACHE_UNLOCK();
}
