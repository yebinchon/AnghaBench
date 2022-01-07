
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fs_klist ;
 int fs_klist_lck_grp ;
 int fs_klist_lock ;
 int klist_init (int *) ;
 int lck_grp_alloc_init (char*,int *) ;
 int lck_mtx_alloc_init (int ,int *) ;

void
vfs_event_init(void)
{

 klist_init(&fs_klist);
 fs_klist_lck_grp = lck_grp_alloc_init("fs_klist", ((void*)0));
 fs_klist_lock = lck_mtx_alloc_init(fs_klist_lck_grp, ((void*)0));
}
