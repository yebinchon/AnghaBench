
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * s6_addr32; } ;
struct TYPE_6__ {TYPE_1__ sin6_addr; } ;
struct TYPE_8__ {int * s6_addr32; } ;
struct nd_prefix {int ndpr_plen; int ndpr_addrcnt; int ndpr_expire; TYPE_2__ ndpr_prefix; TYPE_4__ ndpr_mask; struct ifnet* ndpr_ifp; } ;
struct TYPE_7__ {TYPE_4__ sin6_addr; } ;
struct in6_ifaddr {int ia_ifa; TYPE_3__ ia_prefixmask; TYPE_2__ ia_addr; } ;
struct ifnet {int dummy; } ;
typedef int pr0 ;


 int IFA_LOCK (int *) ;
 int IFA_UNLOCK (int *) ;
 int ND6_PREFIX_EXPIRY_UNSPEC ;
 int NDPR_LOCK (struct nd_prefix*) ;
 int NDPR_REMREF (struct nd_prefix*) ;
 int NDPR_UNLOCK (struct nd_prefix*) ;
 int VERIFY (int) ;
 int bzero (struct nd_prefix*,int) ;
 int in6_mask2len (TYPE_4__*,int *) ;
 int in6_purgeaddr (int *) ;
 struct nd_prefix* nd6_prefix_lookup (struct nd_prefix*,int ) ;

__attribute__((used)) static __attribute__((noinline)) void
in6ctl_difaddr(struct ifnet *ifp, struct in6_ifaddr *ia)
{
 int i = 0;
 struct nd_prefix pr0, *pr;

 VERIFY(ifp != ((void*)0) && ia != ((void*)0));
 IFA_LOCK(&ia->ia_ifa);
 bzero(&pr0, sizeof (pr0));
 pr0.ndpr_ifp = ifp;
 pr0.ndpr_plen = in6_mask2len(&ia->ia_prefixmask.sin6_addr, ((void*)0));
 if (pr0.ndpr_plen == 128) {
  IFA_UNLOCK(&ia->ia_ifa);
  goto purgeaddr;
 }
 pr0.ndpr_prefix = ia->ia_addr;
 pr0.ndpr_mask = ia->ia_prefixmask.sin6_addr;
 for (i = 0; i < 4; i++) {
  pr0.ndpr_prefix.sin6_addr.s6_addr32[i] &=
      ia->ia_prefixmask.sin6_addr.s6_addr32[i];
 }
 IFA_UNLOCK(&ia->ia_ifa);

 if ((pr = nd6_prefix_lookup(&pr0, ND6_PREFIX_EXPIRY_UNSPEC)) != ((void*)0)) {
  IFA_LOCK(&ia->ia_ifa);
  NDPR_LOCK(pr);
  if (pr->ndpr_addrcnt == 1) {

   pr->ndpr_expire = 1;
  }
  NDPR_UNLOCK(pr);
  IFA_UNLOCK(&ia->ia_ifa);


  NDPR_REMREF(pr);
 }

purgeaddr:
 in6_purgeaddr(&ia->ia_ifa);
}
