
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_grp_alloc_init (char*,int *) ;
 int lck_mtx_alloc_init (int ,int *) ;
 int lck_rw_alloc_init (int ,int *) ;
 int sysctl_geometry_lock ;
 int sysctl_lock_group ;
 int sysctl_register_set (char*) ;
 int sysctl_unlocked_node_lock ;

void
sysctl_early_init(void)
{







 sysctl_lock_group = lck_grp_alloc_init("sysctl", ((void*)0));
 sysctl_geometry_lock = lck_rw_alloc_init(sysctl_lock_group, ((void*)0));
 sysctl_unlocked_node_lock = lck_mtx_alloc_init(sysctl_lock_group, ((void*)0));

 sysctl_register_set("__sysctl_set");
}
