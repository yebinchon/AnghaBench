
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_4__ {int sa_family; } ;
struct ifreq {TYPE_2__ ifr_addr; } ;
struct ifaddr {int ifa_rtrequest; TYPE_1__* ifa_addr; } ;
typedef int ifnet_t ;
typedef int errno_t ;
struct TYPE_3__ {int sa_family; } ;


 int AF_INET6 ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int IFA_LOCK (struct ifaddr*) ;
 int IFA_LOCK_ASSERT_NOTHELD (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int IFF_UP ;
 int IN6_IS_ADDR_6TO4 (int *) ;



 int ifnet_flags (int ) ;
 int ifnet_set_flags (int ,int,int) ;
 int stf_rtrequest ;

__attribute__((used)) static errno_t
stf_ioctl(
 ifnet_t ifp,
 u_long cmd,
 void *data)
{
 struct ifaddr *ifa;
 struct ifreq *ifr;
 struct sockaddr_in6 *sin6;
 int error;

 error = 0;
 switch (cmd) {
 case 128:
  ifa = (struct ifaddr *)data;
  if (ifa == ((void*)0)) {
   error = EAFNOSUPPORT;
   break;
  }
  IFA_LOCK(ifa);
  if (ifa->ifa_addr->sa_family != AF_INET6) {
   IFA_UNLOCK(ifa);
   error = EAFNOSUPPORT;
   break;
  }
  sin6 = (struct sockaddr_in6 *)(void *)ifa->ifa_addr;
  if (IN6_IS_ADDR_6TO4(&sin6->sin6_addr)) {
                        if ( !(ifnet_flags( ifp ) & IFF_UP) ) {

    ifa->ifa_rtrequest = stf_rtrequest;
    IFA_UNLOCK(ifa);
    ifnet_set_flags(ifp, IFF_UP, IFF_UP);
   } else {
    IFA_UNLOCK(ifa);
   }
  } else {
   IFA_UNLOCK(ifa);
   error = EINVAL;
  }
  IFA_LOCK_ASSERT_NOTHELD(ifa);
  break;

 case 130:
 case 129:
  ifr = (struct ifreq *)data;
  if (ifr && ifr->ifr_addr.sa_family == AF_INET6)
   ;
  else
   error = EAFNOSUPPORT;
  break;

 default:
  error = EOPNOTSUPP;
  break;
 }

 return error;
}
