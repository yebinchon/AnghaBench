
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int apple_protect_pager_lck_attr ;
 int apple_protect_pager_lck_grp ;
 int apple_protect_pager_lck_grp_attr ;
 int apple_protect_pager_lock ;
 int apple_protect_pager_queue ;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 int lck_mtx_init (int *,int *,int *) ;
 int queue_init (int *) ;

void
apple_protect_pager_bootstrap(void)
{
 lck_grp_attr_setdefault(&apple_protect_pager_lck_grp_attr);
 lck_grp_init(&apple_protect_pager_lck_grp, "apple_protect", &apple_protect_pager_lck_grp_attr);
 lck_attr_setdefault(&apple_protect_pager_lck_attr);
 lck_mtx_init(&apple_protect_pager_lock, &apple_protect_pager_lck_grp, &apple_protect_pager_lck_attr);
 queue_init(&apple_protect_pager_queue);
}
