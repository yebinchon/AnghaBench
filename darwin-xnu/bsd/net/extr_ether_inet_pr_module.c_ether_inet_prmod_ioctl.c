
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u_long ;
struct TYPE_12__ {int sa_data; } ;
struct ifreq {TYPE_1__ ifr_addr; } ;
struct ifaddr {int dummy; } ;
struct ether_addr {int dummy; } ;
typedef int protocol_family_t ;
typedef TYPE_2__* ifnet_t ;
typedef int errno_t ;
struct TYPE_13__ {int if_unit; int if_softc; } ;
struct TYPE_11__ {int sin_addr; } ;


 int AF_INET ;
 int EOPNOTSUPP ;
 int ETHER_ADDR_LEN ;
 TYPE_10__* IA_SIN (struct ifaddr*) ;
 int IFF_RUNNING ;
 int IFF_UP ;
 scalar_t__ IF_LLADDR (TYPE_2__*) ;



 int SIOCSIFFLAGS ;
 int ifaddr_address_family (struct ifaddr*) ;
 int ifnet_flags (TYPE_2__*) ;
 int ifnet_guarded_lladdr_copy_bytes (TYPE_2__*,int ,int ) ;
 int ifnet_ioctl (TYPE_2__*,int ,int ,int *) ;
 int ifnet_set_flags (TYPE_2__*,int ,int ) ;
 int inet_arp_init_ifaddr (TYPE_2__*,struct ifaddr*) ;
 int kdp_get_interface () ;
 int kdp_set_ip_and_mac_addresses (int *,struct ether_addr*) ;

__attribute__((used)) static errno_t
ether_inet_prmod_ioctl(ifnet_t ifp, protocol_family_t protocol_family,
    u_long command, void *data)
{
#pragma unused(protocol_family)
 int error = 0;

 switch (command) {
 case 128:
 case 130: {





  struct ifaddr *ifa = data;

  if (!(ifnet_flags(ifp) & IFF_RUNNING)) {
   ifnet_set_flags(ifp, IFF_UP, IFF_UP);
   ifnet_ioctl(ifp, 0, SIOCSIFFLAGS, ((void*)0));
  }

  if (ifaddr_address_family(ifa) != AF_INET)
   break;

  inet_arp_init_ifaddr(ifp, ifa);

  if (command != 128)
   break;
  if ((kdp_get_interface() != 0 &&
      kdp_get_interface() == ifp->if_softc) ||
      (kdp_get_interface() == 0 && ifp->if_unit == 0))
   kdp_set_ip_and_mac_addresses(&(IA_SIN(ifa)->sin_addr),
       (struct ether_addr *)IF_LLADDR(ifp));
  break;
 }

 case 129: {
  struct ifreq *ifr = data;
  ifnet_guarded_lladdr_copy_bytes(ifp, ifr->ifr_addr.sa_data,
      ETHER_ADDR_LEN);
  break;
 }

 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
