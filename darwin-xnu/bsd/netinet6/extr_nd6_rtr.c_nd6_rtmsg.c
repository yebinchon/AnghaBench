
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtentry {int rt_flags; TYPE_2__* rt_ifa; int rt_gateway; struct ifnet* rt_ifp; } ;
struct rt_addrinfo {int * rti_info; } ;
struct ifnet {TYPE_1__* if_lladdr; } ;
typedef int info ;
typedef int caddr_t ;
struct TYPE_4__ {int ifa_addr; } ;
struct TYPE_3__ {int ifa_addr; } ;


 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 size_t RTAX_IFA ;
 size_t RTAX_IFP ;
 size_t RTAX_NETMASK ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int bzero (int ,int) ;
 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 int rt_missmsg (int,struct rt_addrinfo*,int ,int ) ;

__attribute__((used)) static void
nd6_rtmsg(int cmd, struct rtentry *rt)
{
 struct rt_addrinfo info;
 struct ifnet *ifp = rt->rt_ifp;

 RT_LOCK_ASSERT_HELD(rt);

 bzero((caddr_t)&info, sizeof (info));

 info.rti_info[RTAX_DST] = rt_key(rt);
 info.rti_info[RTAX_GATEWAY] = rt->rt_gateway;
 info.rti_info[RTAX_NETMASK] = rt_mask(rt);




 info.rti_info[RTAX_IFP] = ifp->if_lladdr->ifa_addr;
 info.rti_info[RTAX_IFA] = rt->rt_ifa->ifa_addr;

 rt_missmsg(cmd, &info, rt->rt_flags, 0);
}
