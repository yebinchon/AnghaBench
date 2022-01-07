
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int sa_family_t ;
typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
struct TYPE_3__ {int if_hwassist; int if_tso_v6_mtu; int if_tso_v4_mtu; } ;




 int EINVAL ;
 int EPROTONOSUPPORT ;
 int IFNET_TSO_IPV4 ;
 int IFNET_TSO_IPV6 ;

errno_t
ifnet_get_tso_mtu(ifnet_t interface, sa_family_t family, u_int32_t *mtuLen)
{
 errno_t error = 0;

 if (interface == ((void*)0) || mtuLen == ((void*)0))
  return (EINVAL);

 switch (family) {
 case 129:
  if (interface->if_hwassist & IFNET_TSO_IPV4)
   *mtuLen = interface->if_tso_v4_mtu;
  else
   error = EINVAL;
  break;

 case 128:
  if (interface->if_hwassist & IFNET_TSO_IPV6)
   *mtuLen = interface->if_tso_v6_mtu;
  else
   error = EINVAL;
  break;

 default:
  error = EPROTONOSUPPORT;
  break;
 }

 return (error);
}
