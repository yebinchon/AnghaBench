
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_ATTR_NULL ;
 int kpc_arch_init () ;
 int kpc_common_init () ;
 int kpc_initted ;
 int kpc_thread_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int ,int ) ;
 int sysctl_lckgrp ;
 int sysctl_lckgrp_attr ;
 int sysctl_lock ;

void
kpc_init(void)
{
 sysctl_lckgrp_attr = lck_grp_attr_alloc_init();
 sysctl_lckgrp = lck_grp_alloc_init("kpc", sysctl_lckgrp_attr);
 lck_mtx_init(&sysctl_lock, sysctl_lckgrp, LCK_ATTR_NULL);

 kpc_arch_init();
 kpc_common_init();
 kpc_thread_init();

 kpc_initted = 1;
}
