
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;
struct ifaddr {int ifa_debug; } ;


 int EADDRNOTAVAIL ;
 int EHOSTUNREACH ;
 int ENETUNREACH ;
 int IFA_REMREF (struct ifaddr*) ;
 int IFD_DETACHING ;
 int IPV6_SRCSEL_HINT_PREFER_TMPADDR ;
 int SASEL_LOG (char*,int) ;
 int VERIFY (int ) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;
 int ifnet_release (struct ifnet*) ;
 struct in6_addr* in6_selectsrc_core (struct sockaddr_in6*,int ,struct ifnet*,int ,struct in6_addr*,struct ifnet**,int*,struct ifaddr**) ;
 scalar_t__ ip6_prefer_tempaddr ;

struct ifaddr *
in6_selectsrc_core_ifa(struct sockaddr_in6 *addr, struct ifnet *ifp, int srcsel_debug) {
 int err = 0;
 struct ifnet *src_ifp = ((void*)0);
 struct in6_addr src_storage = {};
 struct in6_addr *in6 = ((void*)0);
 struct ifaddr *ifa = ((void*)0);

 if((in6 = in6_selectsrc_core(addr,
     (ip6_prefer_tempaddr ? IPV6_SRCSEL_HINT_PREFER_TMPADDR : 0),
     ifp, 0, &src_storage, &src_ifp, &err, &ifa)) == ((void*)0)) {
  if (err == 0)
   err = EADDRNOTAVAIL;
  VERIFY(src_ifp == ((void*)0));
  if (ifa != ((void*)0)) {
   IFA_REMREF(ifa);
   ifa = ((void*)0);
  }
  goto done;
 }

 if (src_ifp != ifp) {
  if (err == 0)
   err = ENETUNREACH;
  if (ifa != ((void*)0)) {
   IFA_REMREF(ifa);
   ifa = ((void*)0);
  }
  goto done;
 }

 VERIFY(ifa != ((void*)0));
 ifnet_lock_shared(ifp);
 if ((ifa->ifa_debug & IFD_DETACHING) != 0) {
  err = EHOSTUNREACH;
  ifnet_lock_done(ifp);
  if (ifa != ((void*)0)) {
   IFA_REMREF(ifa);
   ifa = ((void*)0);
  }
  goto done;
 }
 ifnet_lock_done(ifp);

done:
 SASEL_LOG("Returned with error: %d", err);
 if (src_ifp != ((void*)0))
  ifnet_release(src_ifp);
 return (ifa);
}
