
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sin6_family; } ;
struct ifaddr {int dummy; } ;
struct in6_ifaddr {int ia_flags; int ia_plen; TYPE_1__ ia_dstaddr; struct ifaddr ia_ifa; } ;
struct ifnet {int dummy; } ;


 scalar_t__ AF_INET6 ;
 int EOPNOTSUPP ;
 int IFA_LOCK (struct ifaddr*) ;
 int IFA_LOCK_ASSERT_HELD (struct ifaddr*) ;
 int IFA_ROUTE ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int IN6_IFAUPDATE_1STADDR ;
 int IN6_IFAUPDATE_NEWADDR ;
 int PF_INET6 ;
 int RTF_CLONING ;
 int RTF_HOST ;
 int RTF_UP ;
 int RTM_ADD ;
 int SIOCSIFADDR ;
 int VERIFY (int) ;
 int ifnet_ioctl (struct ifnet*,int ,int ,struct in6_ifaddr*) ;
 int in6_ifaddloop (struct ifaddr*) ;
 int routegenid_inet6_update () ;
 int rtinit (struct ifaddr*,int ,int) ;

__attribute__((used)) static int
in6_ifinit(struct ifnet *ifp, struct in6_ifaddr *ia, int ifaupflags)
{
 int error;
 struct ifaddr *ifa;

 error = 0;
 ifa = &ia->ia_ifa;






 if ((ifaupflags & IN6_IFAUPDATE_1STADDR) != 0) {
  error = ifnet_ioctl(ifp, PF_INET6, SIOCSIFADDR, ia);
  if (error != 0) {
   if (error != EOPNOTSUPP)
    return (error);
   error = 0;
  }
 }

 IFA_LOCK(ifa);







 if (!(ia->ia_flags & IFA_ROUTE) && ia->ia_plen == 128 &&
     ia->ia_dstaddr.sin6_family == AF_INET6) {
  IFA_UNLOCK(ifa);
  error = rtinit(ifa, RTM_ADD, RTF_UP | RTF_HOST);
  if (error != 0)
   return (error);
  IFA_LOCK(ifa);
  ia->ia_flags |= IFA_ROUTE;
 }
 IFA_LOCK_ASSERT_HELD(ifa);
 if (ia->ia_plen < 128) {



  ia->ia_flags |= RTF_CLONING;
 }

 IFA_UNLOCK(ifa);


 if ((ifaupflags & IN6_IFAUPDATE_NEWADDR) != 0)
  in6_ifaddloop(ifa);


 routegenid_inet6_update();

 VERIFY(error == 0);
 return (0);
}
