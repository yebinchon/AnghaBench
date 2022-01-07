
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_family; } ;
typedef TYPE_1__* ifmultiaddr_t ;
typedef int errno_t ;
struct TYPE_3__ {int ifma_ifp; struct sockaddr* ifma_addr; } ;


 scalar_t__ AF_LINK ;
 scalar_t__ AF_UNSPEC ;
 int EINVAL ;
 int if_delmulti_anon (int ,struct sockaddr*) ;

errno_t
ifnet_remove_multicast(ifmultiaddr_t ifma)
{
 struct sockaddr *maddr;

 if (ifma == ((void*)0))
  return (EINVAL);

 maddr = ifma->ifma_addr;

 if (maddr->sa_family != AF_UNSPEC && maddr->sa_family != AF_LINK)
  return (EINVAL);

 return (if_delmulti_anon(ifma->ifma_ifp, maddr));
}
