
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef TYPE_1__* ifnet_t ;
typedef scalar_t__ errno_t ;
struct TYPE_5__ {scalar_t__ if_linkmiblen; int * if_linkmib; } ;


 scalar_t__ EINVAL ;
 scalar_t__ EMSGSIZE ;
 scalar_t__ ENOTSUP ;
 int bcopy (int *,void*,scalar_t__) ;
 int ifnet_lock_done (TYPE_1__*) ;
 int ifnet_lock_shared (TYPE_1__*) ;

errno_t
ifnet_get_link_mib_data(ifnet_t interface, void *mibData, u_int32_t *mibLen)
{
 errno_t result = 0;

 if (interface == ((void*)0))
  return (EINVAL);

 ifnet_lock_shared(interface);
 if (*mibLen < interface->if_linkmiblen)
  result = EMSGSIZE;
 if (result == 0 && interface->if_linkmib == ((void*)0))
  result = ENOTSUP;

 if (result == 0) {
  *mibLen = interface->if_linkmiblen;
  bcopy(interface->if_linkmib, mibData, *mibLen);
 }
 ifnet_lock_done(interface);

 return (result);
}
