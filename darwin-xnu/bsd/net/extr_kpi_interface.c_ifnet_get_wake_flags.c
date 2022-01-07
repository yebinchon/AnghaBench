
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_1__* ifnet_t ;
struct TYPE_3__ {int if_xflags; } ;


 int IFXF_WAKE_ON_MAGIC_PACKET ;
 int IF_WAKE_ON_MAGIC_PACKET ;

u_int32_t
ifnet_get_wake_flags(ifnet_t interface)
{
 u_int32_t flags = 0;

 if (interface == ((void*)0))
  return (0);

 if (interface->if_xflags & IFXF_WAKE_ON_MAGIC_PACKET)
  flags |= IF_WAKE_ON_MAGIC_PACKET;

 return (flags);
}
