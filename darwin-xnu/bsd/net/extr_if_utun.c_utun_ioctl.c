
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int u_long ;
struct utun_pcb {scalar_t__ utun_slot_size; int utun_use_netif; } ;
struct ifreq {int ifr_mtu; } ;
typedef int ifnet_t ;
typedef int errno_t ;


 int EINVAL ;
 int EOPNOTSUPP ;


 scalar_t__ UTUN_IF_HEADROOM_SIZE ;
 int ifnet_set_mtu (int ,int ) ;
 struct utun_pcb* ifnet_softc (int ) ;

__attribute__((used)) static errno_t
utun_ioctl(ifnet_t interface,
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
