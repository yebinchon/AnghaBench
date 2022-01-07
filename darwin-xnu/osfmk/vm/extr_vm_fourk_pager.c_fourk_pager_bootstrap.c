
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fourk_pager_lck_attr ;
 int fourk_pager_lck_grp ;
 int fourk_pager_lck_grp_attr ;
 int fourk_pager_lock ;
 int fourk_pager_queue ;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 int lck_mtx_init (int *,int *,int *) ;
 int queue_init (int *) ;

void
fourk_pager_bootstrap(void)
{
 lck_grp_attr_setdefault(&fourk_pager_lck_grp_attr);
 lck_grp_init(&fourk_pager_lck_grp, "4K-pager", &fourk_pager_lck_grp_attr);
 lck_attr_setdefault(&fourk_pager_lck_attr);
 lck_mtx_init(&fourk_pager_lock, &fourk_pager_lck_grp, &fourk_pager_lck_attr);
 queue_init(&fourk_pager_queue);
}
