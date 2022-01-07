
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node_head {int (* rnh_walktree ) (struct radix_node_head*,int ,struct ifnet*) ;} ;
struct ifnet {int dummy; } ;


 int AF_MAX ;
 int if_rtmtu ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 int routegenid_update () ;
 struct radix_node_head** rt_tables ;
 int stub1 (struct radix_node_head*,int ,struct ifnet*) ;

__attribute__((used)) static void
if_rtmtu_update(struct ifnet *ifp)
{
 struct radix_node_head *rnh;
 int p;

 for (p = 0; p < AF_MAX + 1; p++) {
  if ((rnh = rt_tables[p]) == ((void*)0))
   continue;

  lck_mtx_lock(rnh_lock);
  (void) rnh->rnh_walktree(rnh, if_rtmtu, ifp);
  lck_mtx_unlock(rnh_lock);
 }
 routegenid_update();
}
