
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_lock; } ;


 int lck_mtx_init (int *,int ,int ) ;
 int rte_mtx_attr ;
 int rte_mtx_grp ;

__attribute__((used)) static void
rte_lock_init(struct rtentry *rt)
{
 lck_mtx_init(&rt->rt_lock, rte_mtx_grp, rte_mtx_attr);
}
