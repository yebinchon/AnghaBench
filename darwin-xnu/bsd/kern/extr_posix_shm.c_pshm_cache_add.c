
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pshmname {scalar_t__ pshm_namelen; int pshm_nameptr; } ;
struct pshminfo {int dummy; } ;
struct pshmhashhead {struct pshmcache* lh_first; } ;
struct TYPE_2__ {struct pshmcache* le_next; } ;
struct pshmcache {scalar_t__ pshm_nlen; TYPE_1__ pshm_hash; int pshm_name; struct pshminfo* pshminfo; } ;


 int EEXIST ;
 int LIST_INSERT_HEAD (struct pshmhashhead*,struct pshmcache*,int ) ;
 scalar_t__ PSHMCACHE_FOUND ;
 struct pshmhashhead* PSHMHASH (struct pshmname*) ;
 scalar_t__ PSHMNAMLEN ;
 int bcopy (int ,int ,unsigned int) ;
 int panic (char*) ;
 scalar_t__ pshm_cache_search (struct pshminfo**,struct pshmname*,struct pshmcache**,int ) ;
 int pshm_hash ;
 int pshmnument ;

__attribute__((used)) static int
pshm_cache_add(struct pshminfo *pshmp, struct pshmname *pnp, struct pshmcache *pcp)
{
 struct pshmhashhead *pcpp;
 struct pshminfo *dpinfo;
 struct pshmcache *dpcp;
 if (pshm_cache_search(&dpinfo, pnp, &dpcp, 0) == PSHMCACHE_FOUND) {
  return EEXIST;
 }
 pshmnument++;




 pcp->pshminfo = pshmp;
 pcp->pshm_nlen = pnp->pshm_namelen;
 bcopy(pnp->pshm_nameptr, pcp->pshm_name, (unsigned)pcp->pshm_nlen);
 pcpp = PSHMHASH(pnp);
 LIST_INSERT_HEAD(pcpp, pcp, pshm_hash);
 return 0;
}
