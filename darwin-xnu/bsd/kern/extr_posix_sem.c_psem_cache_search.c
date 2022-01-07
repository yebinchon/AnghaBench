
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct psemname {scalar_t__ psem_namelen; int psem_nameptr; } ;
struct pseminfo {int dummy; } ;
struct psemhashhead {struct psemcache* lh_first; } ;
struct TYPE_3__ {struct psemcache* le_next; } ;
struct psemcache {scalar_t__ psem_nlen; struct pseminfo* pseminfo; int psem_name; TYPE_1__ psem_hash; } ;
struct TYPE_4__ {int neghits; int goodhits; int miss; int longnames; } ;


 int PSEMCACHE_FOUND ;
 int PSEMCACHE_NEGATIVE ;
 int PSEMCACHE_NOTFOUND ;
 struct psemhashhead* PSEMHASH (struct psemname*) ;
 scalar_t__ PSEMNAMLEN ;
 int bcmp (int ,int ,int ) ;
 TYPE_2__ psemstats ;

__attribute__((used)) static int
psem_cache_search(struct pseminfo **psemp, struct psemname *pnp,
    struct psemcache **pcache)
{
 struct psemcache *pcp, *nnp;
 struct psemhashhead *pcpp;

 if (pnp->psem_namelen > PSEMNAMLEN) {
  psemstats.longnames++;
  return PSEMCACHE_NOTFOUND;
 }

 pcpp = PSEMHASH(pnp);
 for (pcp = pcpp->lh_first; pcp != 0; pcp = nnp) {
  nnp = pcp->psem_hash.le_next;
  if (pcp->psem_nlen == pnp->psem_namelen &&
      !bcmp(pcp->psem_name, pnp->psem_nameptr, (u_int)pcp-> psem_nlen))
   break;
 }

 if (pcp == 0) {
  psemstats.miss++;
  return PSEMCACHE_NOTFOUND;
 }


        if (pcp->pseminfo) {
  psemstats.goodhits++;

  *psemp = pcp->pseminfo;
  *pcache = pcp;
  return PSEMCACHE_FOUND;
 }





 psemstats.neghits++;
 return PSEMCACHE_NEGATIVE;
}
