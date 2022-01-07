
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry_dbg {int dummy; } ;
struct rtentry {int rt_lock; } ;
typedef scalar_t__ boolean_t ;


 int RTD_DEBUG ;
 int RT_LOCK_ASSERT_NOTHELD (struct rtentry*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_lock_spin (int *) ;
 int rte_debug ;
 int rte_lock_debug (struct rtentry_dbg*) ;

void
rt_lock(struct rtentry *rt, boolean_t spin)
{
 RT_LOCK_ASSERT_NOTHELD(rt);
 if (spin)
  lck_mtx_lock_spin(&rt->rt_lock);
 else
  lck_mtx_lock(&rt->rt_lock);
 if (rte_debug & RTD_DEBUG)
  rte_lock_debug((struct rtentry_dbg *)rt);
}
