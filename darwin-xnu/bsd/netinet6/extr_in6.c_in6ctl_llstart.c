
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {int sin6_family; int sin6_len; } ;
struct TYPE_3__ {int sin6_family; } ;
struct in6_aliasreq {TYPE_2__ ifra_dstaddr; TYPE_1__ ifra_addr; } ;
struct ifnet {int dummy; } ;
typedef int caddr_t ;
typedef int boolean_t ;


 int AF_INET6 ;


 int VERIFY (int ) ;
 struct in6_aliasreq* in6_aliasreq_to_native (int ,int,struct in6_aliasreq*) ;
 int in6_if_up_dad_start (struct ifnet*) ;
 int in6_ifattach_aliasreq (struct ifnet*,int *,struct in6_aliasreq*) ;

__attribute__((used)) static __attribute__((noinline)) int
in6ctl_llstart(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct in6_aliasreq sifra, *ifra = ((void*)0);
 boolean_t is64;
 int error = 0;

 VERIFY(ifp != ((void*)0));

 switch (cmd) {
 case 129:
 case 128:
  is64 = (cmd == 128);






  ifra = in6_aliasreq_to_native(data, is64, &sifra);






  if (ifra->ifra_addr.sin6_family == AF_INET6 &&

      (ifra->ifra_dstaddr.sin6_len == 0 ||
      ifra->ifra_dstaddr.sin6_family == AF_INET6)) {

   error = in6_ifattach_aliasreq(ifp, ((void*)0), ifra);
  } else {
   error = in6_ifattach_aliasreq(ifp, ((void*)0), ((void*)0));
  }
  if (error == 0)
   in6_if_up_dad_start(ifp);
  break;

 default:
  VERIFY(0);

 }

 return (error);
}
