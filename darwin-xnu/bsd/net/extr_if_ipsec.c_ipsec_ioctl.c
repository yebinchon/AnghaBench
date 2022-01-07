
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_long ;
struct ipsec_pcb {int ipsec_slot_size; int ipsec_use_netif; } ;
struct ifreq {int ifr_mtu; } ;
typedef int ifnet_t ;
typedef int errno_t ;


 int EINVAL ;
 int EOPNOTSUPP ;


 int ifnet_set_mtu (int ,int ) ;
 struct ipsec_pcb* ifnet_softc (int ) ;

__attribute__((used)) static errno_t
ipsec_ioctl(ifnet_t interface,
   u_long command,
   void *data)
{



 errno_t result = 0;

 switch(command) {
  case 128: {
   {
    ifnet_set_mtu(interface, ((struct ifreq*)data)->ifr_mtu);
   }
   break;
  }

  case 129:

   break;

  default:
   result = EOPNOTSUPP;
 }

 return result;
}
