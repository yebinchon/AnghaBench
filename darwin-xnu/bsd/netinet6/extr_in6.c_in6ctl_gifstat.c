
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int ifru_icmp6stat; int ifru_stat; } ;
struct in6_ifreq {TYPE_1__ ifr_ifru; } ;
struct ifnet {int if_index; } ;
struct TYPE_4__ {int icmp6_ifstat; int in6_ifstat; } ;


 TYPE_2__* IN6_IFEXTRA (struct ifnet*) ;


 int VERIFY (int ) ;
 int bcopy (int *,int *,int) ;
 int bzero (int *,int) ;

__attribute__((used)) static __attribute__((noinline)) int
in6ctl_gifstat(struct ifnet *ifp, u_long cmd, struct in6_ifreq *ifr)
{
 int error = 0, index;

 VERIFY(ifp != ((void*)0));
 index = ifp->if_index;

 switch (cmd) {
 case 128:

  if (IN6_IFEXTRA(ifp) == ((void*)0)) {

   bzero(&ifr->ifr_ifru.ifru_stat,
       sizeof (ifr->ifr_ifru.ifru_stat));
  } else {
   bcopy(&IN6_IFEXTRA(ifp)->in6_ifstat,
       &ifr->ifr_ifru.ifru_stat,
       sizeof (ifr->ifr_ifru.ifru_stat));
  }
  break;

 case 129:

  if (IN6_IFEXTRA(ifp) == ((void*)0)) {

   bzero(&ifr->ifr_ifru.ifru_icmp6stat,
       sizeof (ifr->ifr_ifru.ifru_icmp6stat));
  } else {
   bcopy(&IN6_IFEXTRA(ifp)->icmp6_ifstat,
       &ifr->ifr_ifru.ifru_icmp6stat,
       sizeof (ifr->ifr_ifru.ifru_icmp6stat));
  }
  break;

 default:
  VERIFY(0);

 }

 return (error);
}
