
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct rtentry {int dummy; } ;
struct in_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 struct rtentry* ifnet_cached_rtlookup_inet (struct ifnet*,struct in_addr) ;
 scalar_t__ nstat_collect ;
 int nstat_route_rx (struct rtentry*,int ,int ,int ) ;
 int rtfree (struct rtentry*) ;

__attribute__((used)) static void
ip_input_update_nstat(struct ifnet *ifp, struct in_addr src_ip,
    u_int32_t packets, u_int32_t bytes)
{
 if (nstat_collect) {
  struct rtentry *rt = ifnet_cached_rtlookup_inet(ifp,
      src_ip);
  if (rt != ((void*)0)) {
   nstat_route_rx(rt, packets, bytes, 0);
   rtfree(rt);
  }
 }
}
