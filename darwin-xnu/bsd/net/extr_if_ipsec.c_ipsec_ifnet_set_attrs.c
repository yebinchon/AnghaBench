
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet_stats_param {int dummy; } ;
typedef int ifnet_t ;
typedef int errno_t ;


 int IFEF_NOAUTOIPV6LL ;
 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 int IFF_UP ;
 int bzero (struct ifnet_stats_param*,int) ;
 int ifnet_set_eflags (int ,int ,int ) ;
 int ifnet_set_flags (int ,int,int) ;
 int ifnet_set_mtu (int ,int) ;
 int ifnet_set_stat (int ,struct ifnet_stats_param*) ;

__attribute__((used)) static errno_t
ipsec_ifnet_set_attrs(ifnet_t ifp)
{

 ifnet_set_mtu(ifp, 1500);
 ifnet_set_flags(ifp, IFF_UP | IFF_MULTICAST | IFF_POINTOPOINT, 0xffff);




 ifnet_set_eflags(ifp, IFEF_NOAUTOIPV6LL, IFEF_NOAUTOIPV6LL);



 struct ifnet_stats_param stats;
 bzero(&stats, sizeof(struct ifnet_stats_param));
 ifnet_set_stat(ifp, &stats);


 return (0);
}
