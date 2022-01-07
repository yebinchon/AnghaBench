
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_int16_t ;
typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
struct TYPE_10__ {int if_flags; } ;


 int EINVAL ;
 int IFF_MULTICAST ;
 int IFF_UP ;
 int * IGMP_IFINFO (TYPE_1__*) ;
 int * MLD_IFINFO (TYPE_1__*) ;
 int if_updown (TYPE_1__*,int) ;
 int ifnet_lock_done (TYPE_1__*) ;
 int ifnet_lock_exclusive (TYPE_1__*) ;
 int igmp_initsilent (TYPE_1__*,int *) ;
 int mld6_initsilent (TYPE_1__*,int *) ;

errno_t
ifnet_set_flags(ifnet_t interface, u_int16_t new_flags, u_int16_t mask)
{
 uint16_t old_flags;

 if (interface == ((void*)0))
  return (EINVAL);

 ifnet_lock_exclusive(interface);


 if ((mask & IFF_UP) != 0) {
  if_updown(interface, (new_flags & IFF_UP) == IFF_UP);
 }

 old_flags = interface->if_flags;
 interface->if_flags = (new_flags & mask) | (interface->if_flags & ~mask);

 if ((old_flags & IFF_MULTICAST) !=
     (interface->if_flags & IFF_MULTICAST)) {
 }

 ifnet_lock_done(interface);

 return (0);
}
