
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node_head {scalar_t__ (* rnh_walktree ) (struct radix_node_head*,int ,int *) ;} ;
typedef int nstat_msg_add_all_srcs ;
typedef int nstat_control_state ;
typedef scalar_t__ errno_t ;


 int AF_MAX ;
 int OSIncrementAtomic (int *) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nstat_route_walktree_add ;
 int nstat_route_watchers ;
 scalar_t__ nstat_set_provider_filter (int *,int *) ;
 int rnh_lock ;
 struct radix_node_head** rt_tables ;
 scalar_t__ stub1 (struct radix_node_head*,int ,int *) ;

__attribute__((used)) static errno_t
nstat_route_add_watcher(
 nstat_control_state *state,
 nstat_msg_add_all_srcs *req)
{
 int i;
 errno_t result = 0;

 lck_mtx_lock(rnh_lock);

 result = nstat_set_provider_filter(state, req);
 if (result == 0)
 {
  OSIncrementAtomic(&nstat_route_watchers);

  for (i = 1; i < AF_MAX; i++)
  {
   struct radix_node_head *rnh;
   rnh = rt_tables[i];
   if (!rnh) continue;

   result = rnh->rnh_walktree(rnh, nstat_route_walktree_add, state);
   if (result != 0)
   {




    break;
   }
  }
 }
 lck_mtx_unlock(rnh_lock);

 return result;
}
