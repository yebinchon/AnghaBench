
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct ipv6_mreq {unsigned int ipv6mr_interface; } ;
struct TYPE_3__ {int s_addr; } ;
struct ip_mreq {TYPE_1__ imr_interface; } ;
struct ifnet {int dummy; } ;
struct ifaddr {scalar_t__ ifa_addr; } ;


 int AF_INET ;
 int EADDRNOTAVAIL ;
 int IFA_REMREF (struct ifaddr*) ;
 scalar_t__ if_index ;
 struct ifaddr* ifa_ifpgetprimary (struct ifnet*,int ) ;
 struct ifnet** ifindex2ifnet ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;

__attribute__((used)) static int
in6p_lookup_v4addr(struct ipv6_mreq *mreq, struct ip_mreq *v4mreq)
{
 struct ifnet *ifp;
 struct ifaddr *ifa;
 struct sockaddr_in *sin;

 ifnet_head_lock_shared();
 if (mreq->ipv6mr_interface > (unsigned int)if_index) {
  ifnet_head_done();
  return (EADDRNOTAVAIL);
 } else
  ifp = ifindex2ifnet[mreq->ipv6mr_interface];
 ifnet_head_done();
 if (ifp == ((void*)0))
  return (EADDRNOTAVAIL);
 ifa = ifa_ifpgetprimary(ifp, AF_INET);
 if (ifa == ((void*)0))
  return (EADDRNOTAVAIL);
 sin = (struct sockaddr_in *)(uintptr_t)(size_t)ifa->ifa_addr;
 v4mreq->imr_interface.s_addr = sin->sin_addr.s_addr;
 IFA_REMREF(ifa);

 return (0);
}
