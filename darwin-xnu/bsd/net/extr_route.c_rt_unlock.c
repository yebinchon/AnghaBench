
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry_dbg {int dummy; } ;
struct rtentry {int rt_lock; } ;


 int RTD_DEBUG ;
 int lck_mtx_unlock (int *) ;
 int rte_debug ;
 int rte_unlock_debug (struct rtentry_dbg*) ;

void
rt_unlock(struct rtentry *rt)
{
 if (rte_debug & RTD_DEBUG)
  rte_unlock_debug((struct rtentry_dbg *)rt);
 lck_mtx_unlock(&rt->rt_lock);

}
