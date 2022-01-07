
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;
typedef int * ifnet_t ;
typedef int ifmultiaddr_t ;
typedef int errno_t ;


 scalar_t__ AF_LINK ;
 scalar_t__ AF_UNSPEC ;
 int EINVAL ;
 int if_addmulti_anon (int *,struct sockaddr const*,int *) ;

errno_t
ifnet_add_multicast(ifnet_t interface, const struct sockaddr *maddr,
    ifmultiaddr_t *ifmap)
{
 if (interface == ((void*)0) || maddr == ((void*)0))
  return (EINVAL);


 if (maddr->sa_family != AF_UNSPEC && maddr->sa_family != AF_LINK)
  return (EINVAL);

 return (if_addmulti_anon(interface, maddr, ifmap));
}
