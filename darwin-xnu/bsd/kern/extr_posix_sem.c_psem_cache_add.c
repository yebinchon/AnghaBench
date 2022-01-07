
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psemname {scalar_t__ psem_namelen; int psem_nameptr; } ;
struct pseminfo {int dummy; } ;
struct psemhashhead {struct psemcache* lh_first; } ;
struct TYPE_2__ {struct psemcache* le_next; } ;
struct psemcache {scalar_t__ psem_nlen; TYPE_1__ psem_hash; int psem_name; struct pseminfo* pseminfo; } ;


 int EEXIST ;
 int ENOSPC ;
 int LIST_INSERT_HEAD (struct psemhashhead*,struct psemcache*,int ) ;
 scalar_t__ PSEMCACHE_FOUND ;
 struct psemhashhead* PSEMHASH (struct psemname*) ;
 scalar_t__ PSEMNAMLEN ;
 int bcopy (int ,int ,unsigned int) ;
 int panic (char*) ;
 scalar_t__ posix_sem_max ;
 scalar_t__ psem_cache_search (struct pseminfo**,struct psemname*,struct psemcache**) ;
 int psem_hash ;
 scalar_t__ psemnument ;

__attribute__((used)) static int
psem_cache_add(struct pseminfo *psemp, struct psemname *pnp, struct psemcache *pcp)
{
 struct psemhashhead *pcpp;
 struct pseminfo *dpinfo;
 struct psemcache *dpcp;
 if (psem_cache_search(&dpinfo, pnp, &dpcp) == PSEMCACHE_FOUND) {
  return EEXIST;
 }
 if (psemnument >= posix_sem_max)
  return ENOSPC;
 psemnument++;






 pcp->pseminfo = psemp;
 pcp->psem_nlen = pnp->psem_namelen;
 bcopy(pnp->psem_nameptr, pcp->psem_name, (unsigned)pcp->psem_nlen);
 pcpp = PSEMHASH(pnp);
 LIST_INSERT_HEAD(pcpp, pcp, psem_hash);
 return 0;
}
