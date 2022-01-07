
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct sockaddr_in6 {int dummy; } ;
struct in6_ifreq {struct sockaddr_in6 ifr_dstaddr; struct sockaddr_in6 ifr_addr; } ;
struct in6_ifaddr {int ia_ifa; struct sockaddr_in6 ia_dstaddr; struct sockaddr_in6 ia_addr; } ;
struct ifnet {int if_flags; } ;
typedef int addr ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int IFA_LOCK (int *) ;
 int IFA_UNLOCK (int *) ;
 int IFF_POINTOPOINT ;


 int TRUE ;
 int VERIFY (int ) ;
 int bcopy (struct sockaddr_in6*,struct sockaddr_in6*,int) ;
 int sa6_recoverscope (struct sockaddr_in6*,int ) ;

__attribute__((used)) static __attribute__((noinline)) int
in6ctl_gifaddr(struct ifnet *ifp, struct in6_ifaddr *ia, u_long cmd,
    struct in6_ifreq *ifr)
{
 struct sockaddr_in6 addr;
 int error = 0;

 VERIFY(ifp != ((void*)0));

 if (ia == ((void*)0))
  return (EADDRNOTAVAIL);

 switch (cmd) {
 case 129:
  IFA_LOCK(&ia->ia_ifa);
  bcopy(&ia->ia_addr, &addr, sizeof (addr));
  IFA_UNLOCK(&ia->ia_ifa);
  if ((error = sa6_recoverscope(&addr, TRUE)) != 0)
   break;
  bcopy(&addr, &ifr->ifr_addr, sizeof (addr));
  break;

 case 128:
  if (!(ifp->if_flags & IFF_POINTOPOINT)) {
   error = EINVAL;
   break;
  }




  IFA_LOCK(&ia->ia_ifa);
  bcopy(&ia->ia_dstaddr, &addr, sizeof (addr));
  IFA_UNLOCK(&ia->ia_ifa);
  if ((error = sa6_recoverscope(&addr, TRUE)) != 0)
   break;
  bcopy(&addr, &ifr->ifr_dstaddr, sizeof (addr));
  break;

 default:
  VERIFY(0);

 }

 return (error);
}
