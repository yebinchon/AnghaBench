
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {int dummy; } ;
typedef TYPE_1__* ifbond_ref ;
struct TYPE_3__ {int ifb_altmtu; } ;


 scalar_t__ ifnet_mtu (struct ifnet*) ;

__attribute__((used)) static __inline__ int
bond_device_mtu(struct ifnet * ifp, ifbond_ref ifb)
{
    return (((int)ifnet_mtu(ifp) > ifb->ifb_altmtu)
     ? (int)ifnet_mtu(ifp) : ifb->ifb_altmtu);
}
