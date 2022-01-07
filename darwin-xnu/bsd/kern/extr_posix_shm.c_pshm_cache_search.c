
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct pshmname {scalar_t__ pshm_namelen; int pshm_nameptr; } ;
struct pshminfo {int pshm_usecount; } ;
struct pshmhashhead {struct pshmcache* lh_first; } ;
struct TYPE_3__ {struct pshmcache* le_next; } ;
struct pshmcache {scalar_t__ pshm_nlen; struct pshminfo* pshminfo; int pshm_name; TYPE_1__ pshm_hash; } ;
struct TYPE_4__ {int neghits; int goodhits; int miss; int longnames; } ;


 int PSHMCACHE_FOUND ;
 int PSHMCACHE_NEGATIVE ;
 int PSHMCACHE_NOTFOUND ;
 struct pshmhashhead* PSHMHASH (struct pshmname*) ;
 scalar_t__ PSHMNAMLEN ;
 int bcmp (int ,int ,int ) ;
 TYPE_2__ pshmstats ;

__attribute__((used)) static int
pshm_cache_search(struct pshminfo **pshmp, struct pshmname *pnp,
 struct pshmcache **pcache, int addref)
{
 struct pshmcache *pcp, *nnp;
 struct pshmhashhead *pcpp;

 if (pnp->pshm_namelen > PSHMNAMLEN) {
  pshmstats.longnames++;
  return PSHMCACHE_NOTFOUND;
 }

 pcpp = PSHMHASH(pnp);
 for (pcp = pcpp->lh_first; pcp != 0; pcp = nnp) {
  nnp = pcp->pshm_hash.le_next;
  if (pcp->pshm_nlen == pnp->pshm_namelen &&
      !bcmp(pcp->pshm_name, pnp->pshm_nameptr, (u_int)pcp-> pshm_nlen))
   break;
 }

 if (pcp == 0) {
  pshmstats.miss++;
  return PSHMCACHE_NOTFOUND;
 }


        if (pcp->pshminfo) {
  pshmstats.goodhits++;

  *pshmp = pcp->pshminfo;
  *pcache = pcp;
  if (addref)
   pcp->pshminfo->pshm_usecount++;
  return PSHMCACHE_FOUND;
 }




 pshmstats.neghits++;
 return PSHMCACHE_NEGATIVE;
}
