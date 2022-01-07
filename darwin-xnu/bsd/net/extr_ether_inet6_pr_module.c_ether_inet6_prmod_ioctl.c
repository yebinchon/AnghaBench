
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_7__ {int sa_data; } ;
struct ifreq {TYPE_1__ ifr_addr; } ;
typedef int protocol_family_t ;
typedef TYPE_2__* ifnet_t ;
typedef int errno_t ;
struct TYPE_8__ {int if_flags; } ;


 int EOPNOTSUPP ;
 int ETHER_ADDR_LEN ;
 int IFF_RUNNING ;
 int IFF_UP ;


 int SIOCSIFFLAGS ;
 int ifnet_guarded_lladdr_copy_bytes (TYPE_2__*,int ,int ) ;
 int ifnet_ioctl (TYPE_2__*,int ,int ,int *) ;
 int ifnet_set_flags (TYPE_2__*,int ,int ) ;

__attribute__((used)) static errno_t
ether_inet6_prmod_ioctl(ifnet_t ifp, protocol_family_t protocol_family,
    u_long command, void *data)
{
#pragma unused(protocol_family)
 int error = 0;

 switch (command) {
 case 128:





  if ((ifp->if_flags & IFF_RUNNING) == 0) {
   ifnet_set_flags(ifp, IFF_UP, IFF_UP);
   ifnet_ioctl(ifp, 0, SIOCSIFFLAGS, ((void*)0));
  }
  break;

 case 129: {
  struct ifreq *ifr = (struct ifreq *)(void *)data;
  (void) ifnet_guarded_lladdr_copy_bytes(ifp,
      ifr->ifr_addr.sa_data, ETHER_ADDR_LEN);
  break;
 }

 default:
  error = EOPNOTSUPP;
  break;
 }
 return (error);
}
