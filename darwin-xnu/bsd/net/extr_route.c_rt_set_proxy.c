
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rtentry {int rt_flags; } ;
struct radix_node_head {int (* rnh_walktree_from ) (struct radix_node_head*,TYPE_1__*,scalar_t__,int ,struct rtentry*) ;} ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {size_t sa_family; } ;


 int RTF_CLONING ;
 int RTF_PRCLONING ;
 int RTF_PROXY ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 int rt_fixdelete ;
 TYPE_1__* rt_key (struct rtentry*) ;
 scalar_t__ rt_mask (struct rtentry*) ;
 struct radix_node_head** rt_tables ;
 int stub1 (struct radix_node_head*,TYPE_1__*,scalar_t__,int ,struct rtentry*) ;

void
rt_set_proxy(struct rtentry *rt, boolean_t set)
{
 lck_mtx_lock(rnh_lock);
 RT_LOCK(rt);




 if (rt->rt_flags & (RTF_CLONING | RTF_PRCLONING)) {
  struct radix_node_head *rnh = rt_tables[rt_key(rt)->sa_family];

  if (set)
   rt->rt_flags |= RTF_PROXY;
  else
   rt->rt_flags &= ~RTF_PROXY;

  RT_UNLOCK(rt);
  if (rnh != ((void*)0) && rt_mask(rt)) {
   rnh->rnh_walktree_from(rnh, rt_key(rt), rt_mask(rt),
       rt_fixdelete, rt);
  }
 } else {
  RT_UNLOCK(rt);
 }
 lck_mtx_unlock(rnh_lock);
}
