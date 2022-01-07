
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 int lck_mtx_init (int *,int *,int *) ;
 int queue_init (int *) ;
 int swapfile_pager_lck_attr ;
 int swapfile_pager_lck_grp ;
 int swapfile_pager_lck_grp_attr ;
 int swapfile_pager_lock ;
 int swapfile_pager_queue ;

void
swapfile_pager_bootstrap(void)
{
 lck_grp_attr_setdefault(&swapfile_pager_lck_grp_attr);
 lck_grp_init(&swapfile_pager_lck_grp, "swapfile pager", &swapfile_pager_lck_grp_attr);
 lck_attr_setdefault(&swapfile_pager_lck_attr);
 lck_mtx_init(&swapfile_pager_lock, &swapfile_pager_lck_grp, &swapfile_pager_lck_attr);
 queue_init(&swapfile_pager_queue);
}
