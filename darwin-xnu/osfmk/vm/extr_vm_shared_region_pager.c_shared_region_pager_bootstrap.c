
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 int lck_mtx_init (int *,int *,int *) ;
 int queue_init (int *) ;
 int shared_region_pager_lck_attr ;
 int shared_region_pager_lck_grp ;
 int shared_region_pager_lck_grp_attr ;
 int shared_region_pager_lock ;
 int shared_region_pager_queue ;

void
shared_region_pager_bootstrap(void)
{
 lck_grp_attr_setdefault(&shared_region_pager_lck_grp_attr);
 lck_grp_init(&shared_region_pager_lck_grp, "shared_region", &shared_region_pager_lck_grp_attr);
 lck_attr_setdefault(&shared_region_pager_lck_attr);
 lck_mtx_init(&shared_region_pager_lock, &shared_region_pager_lck_grp, &shared_region_pager_lck_attr);
 queue_init(&shared_region_pager_queue);
}
