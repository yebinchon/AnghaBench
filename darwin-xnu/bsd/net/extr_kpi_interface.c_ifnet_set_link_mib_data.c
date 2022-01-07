
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
struct TYPE_5__ {int if_linkmiblen; void* if_linkmib; } ;


 int EINVAL ;
 int ifnet_lock_done (TYPE_1__*) ;
 int ifnet_lock_exclusive (TYPE_1__*) ;

errno_t
ifnet_set_link_mib_data(ifnet_t interface, void *mibData, u_int32_t mibLen)
{
 if (interface == ((void*)0))
  return (EINVAL);

 ifnet_lock_exclusive(interface);
 interface->if_linkmib = (void*)mibData;
 interface->if_linkmiblen = mibLen;
 ifnet_lock_done(interface);
 return (0);
}
