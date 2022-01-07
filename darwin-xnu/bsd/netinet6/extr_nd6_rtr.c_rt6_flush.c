
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node_head {int (* rnh_walktree ) (struct radix_node_head*,int ,void*) ;} ;
struct in6_addr {int * s6_addr16; } ;
struct ifnet {int if_index; } ;


 size_t AF_INET6 ;
 int IN6_IS_ADDR_LINKLOCAL (struct in6_addr*) ;
 int htons (int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 int rt6_deleteroute ;
 struct radix_node_head** rt_tables ;
 int stub1 (struct radix_node_head*,int ,void*) ;

void
rt6_flush(
 struct in6_addr *gateway,
 struct ifnet *ifp)
{
 struct radix_node_head *rnh = rt_tables[AF_INET6];


 if (!IN6_IS_ADDR_LINKLOCAL(gateway)) {
  return;
 }
 lck_mtx_lock(rnh_lock);

 gateway->s6_addr16[1] = htons(ifp->if_index);

 rnh->rnh_walktree(rnh, rt6_deleteroute, (void *)gateway);
 lck_mtx_unlock(rnh_lock);
}
