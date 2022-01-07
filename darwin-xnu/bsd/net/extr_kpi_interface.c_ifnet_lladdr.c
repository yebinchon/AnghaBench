
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifaddr {scalar_t__ ifa_addr; } ;
typedef TYPE_1__* ifnet_t ;
struct TYPE_3__ {struct ifaddr* if_lladdr; } ;


 int IFA_LOCK_SPIN (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 void* LLADDR (int ) ;
 int SDL (void*) ;

void *
ifnet_lladdr(ifnet_t interface)
{
 struct ifaddr *ifa;
 void *lladdr;

 if (interface == ((void*)0))
  return (((void*)0));






 ifa = interface->if_lladdr;
 IFA_LOCK_SPIN(ifa);
 lladdr = LLADDR(SDL((void *)ifa->ifa_addr));
 IFA_UNLOCK(ifa);

 return (lladdr);
}
