
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * le_prev; } ;
struct namecache {int * nc_name; TYPE_2__ nc_hash; TYPE_1__* nc_dvp; scalar_t__ nc_vp; } ;
struct TYPE_6__ {int nc_negentry; int nc_link; } ;
struct TYPE_4__ {int v_ncchildren; } ;


 int FREE_ZONE (struct namecache*,int,int ) ;
 int LIST_REMOVE (struct namecache*,int ) ;
 int M_CACHE ;
 int NCHSTAT (int ) ;
 int TAILQ_REMOVE (int *,struct namecache*,int ) ;
 int nc_child ;
 int nc_entry ;
 int nc_hash ;
 TYPE_3__ nc_un ;
 int nchead ;
 int ncs_deletes ;
 int ncs_negtotal ;
 int neghead ;
 int numcache ;
 int vfs_removename (int *) ;

__attribute__((used)) static void
cache_delete(struct namecache *ncp, int free_entry)
{
        NCHSTAT(ncs_deletes);

        if (ncp->nc_vp) {
         LIST_REMOVE(ncp, nc_un.nc_link);
 } else {
         TAILQ_REMOVE(&neghead, ncp, nc_un.nc_negentry);
         ncs_negtotal--;
 }
        TAILQ_REMOVE(&(ncp->nc_dvp->v_ncchildren), ncp, nc_child);

 LIST_REMOVE(ncp, nc_hash);






 ncp->nc_hash.le_prev = ((void*)0);

 vfs_removename(ncp->nc_name);
 ncp->nc_name = ((void*)0);
 if (free_entry) {
         TAILQ_REMOVE(&nchead, ncp, nc_entry);
  FREE_ZONE(ncp, sizeof(*ncp), M_CACHE);
  numcache--;
 }
}
