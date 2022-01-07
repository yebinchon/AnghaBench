
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sa_family_t ;
typedef TYPE_2__* ifaddr_t ;
struct TYPE_7__ {TYPE_1__* ifa_addr; } ;
struct TYPE_6__ {int sa_family; } ;


 int IFA_LOCK_SPIN (TYPE_2__*) ;
 int IFA_UNLOCK (TYPE_2__*) ;

sa_family_t
ifaddr_address_family(ifaddr_t ifa)
{
 sa_family_t family = 0;

 if (ifa != ((void*)0)) {
  IFA_LOCK_SPIN(ifa);
  if (ifa->ifa_addr != ((void*)0))
   family = ifa->ifa_addr->sa_family;
  IFA_UNLOCK(ifa);
 }
 return (family);
}
