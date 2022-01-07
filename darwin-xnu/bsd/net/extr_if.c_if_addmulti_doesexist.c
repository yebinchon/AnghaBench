
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifnet {int if_multiaddrs; } ;
struct ifmultiaddr {int ifma_flags; int ifma_anoncnt; int ifma_reqcnt; int ifma_addr; } ;


 int ENOENT ;
 int IFMAF_ANONYMOUS ;
 int IFMA_ADDREF_LOCKED (struct ifmultiaddr*) ;
 int IFMA_LOCK_SPIN (struct ifmultiaddr*) ;
 int IFMA_UNLOCK (struct ifmultiaddr*) ;
 struct ifmultiaddr* LIST_FIRST (int *) ;
 struct ifmultiaddr* LIST_NEXT (struct ifmultiaddr*,int ) ;
 int VERIFY (int) ;
 int ifa_equal (struct sockaddr const*,int ) ;
 int ifma_link ;

__attribute__((used)) static int
if_addmulti_doesexist(struct ifnet *ifp, const struct sockaddr *sa,
    struct ifmultiaddr **retifma, int anon)
{
 struct ifmultiaddr *ifma;

 for (ifma = LIST_FIRST(&ifp->if_multiaddrs); ifma != ((void*)0);
     ifma = LIST_NEXT(ifma, ifma_link)) {
  IFMA_LOCK_SPIN(ifma);
  if (!ifa_equal(sa, ifma->ifma_addr)) {
   IFMA_UNLOCK(ifma);
   continue;
  }
  if (anon) {
   VERIFY(!(ifma->ifma_flags & IFMAF_ANONYMOUS) ||
       ifma->ifma_anoncnt != 0);
   VERIFY((ifma->ifma_flags & IFMAF_ANONYMOUS) ||
       ifma->ifma_anoncnt == 0);
   ifma->ifma_anoncnt++;
   if (!(ifma->ifma_flags & IFMAF_ANONYMOUS)) {
    VERIFY(ifma->ifma_anoncnt == 1);
    ifma->ifma_flags |= IFMAF_ANONYMOUS;
   }
  }
  if (!anon || ifma->ifma_anoncnt == 1) {
   ifma->ifma_reqcnt++;
   VERIFY(ifma->ifma_reqcnt > 1);
  }
  if (retifma != ((void*)0)) {
   *retifma = ifma;
   IFMA_ADDREF_LOCKED(ifma);
  }
  IFMA_UNLOCK(ifma);
  return (0);
 }
 return (ENOENT);
}
