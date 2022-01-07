
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_family; } ;
struct ifaddr {struct sockaddr* ifa_addr; } ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int FALSE ;
 int IFA_LOCK_SPIN (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 scalar_t__ SA6_ARE_ADDR_EQUAL (int ,int ) ;
 TYPE_2__* SIN (struct sockaddr*) ;
 int SIN6 (struct sockaddr*) ;
 int TRUE ;

boolean_t
rt_ifa_is_dst(struct sockaddr *dst, struct ifaddr *ifa)
{
 boolean_t result = FALSE;

 if (ifa == ((void*)0) || ifa->ifa_addr == ((void*)0))
  return (result);

 IFA_LOCK_SPIN(ifa);

 if (dst->sa_family == ifa->ifa_addr->sa_family &&
     ((dst->sa_family == AF_INET &&
     SIN(dst)->sin_addr.s_addr ==
     SIN(ifa->ifa_addr)->sin_addr.s_addr) ||
     (dst->sa_family == AF_INET6 &&
     SA6_ARE_ADDR_EQUAL(SIN6(dst), SIN6(ifa->ifa_addr)))))
  result = TRUE;

 IFA_UNLOCK(ifa);

 return (result);
}
