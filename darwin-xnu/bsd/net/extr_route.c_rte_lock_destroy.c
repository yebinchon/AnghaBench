
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_lock; } ;


 int RT_LOCK_ASSERT_NOTHELD (struct rtentry*) ;
 int lck_mtx_destroy (int *,int ) ;
 int rte_mtx_grp ;

__attribute__((used)) static void
rte_lock_destroy(struct rtentry *rt)
{
 RT_LOCK_ASSERT_NOTHELD(rt);
 lck_mtx_destroy(&rt->rt_lock, rte_mtx_grp);
}
