
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node_head {int (* rnh_walktree ) (struct radix_node_head*,int ,struct ifnet*) ;} ;
struct ifnet {int dummy; } ;


 int AF_MAX ;
 int if_rtdel ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 struct radix_node_head** rt_tables ;
 int stub1 (struct radix_node_head*,int ,struct ifnet*) ;

void
if_rtproto_del(struct ifnet *ifp, int protocol)
{
 struct radix_node_head *rnh;

 if ((protocol <= AF_MAX) && (protocol >= 0) &&
  ((rnh = rt_tables[protocol]) != ((void*)0)) && (ifp != ((void*)0))) {
  lck_mtx_lock(rnh_lock);
  (void) rnh->rnh_walktree(rnh, if_rtdel, ifp);
  lck_mtx_unlock(rnh_lock);
 }
}
