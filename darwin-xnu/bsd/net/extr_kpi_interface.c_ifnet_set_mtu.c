
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
struct TYPE_3__ {int if_mtu; } ;


 int EINVAL ;

errno_t
ifnet_set_mtu(ifnet_t interface, u_int32_t mtu)
{
 if (interface == ((void*)0))
  return (EINVAL);

 interface->if_mtu = mtu;
 return (0);
}
