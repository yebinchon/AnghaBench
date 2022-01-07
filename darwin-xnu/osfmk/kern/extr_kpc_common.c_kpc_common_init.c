
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_ATTR_NULL ;
 int kpc_config_lckgrp ;
 int kpc_config_lckgrp_attr ;
 int kpc_config_lock ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int ,int ) ;

void
kpc_common_init(void)
{
 kpc_config_lckgrp_attr = lck_grp_attr_alloc_init();
 kpc_config_lckgrp = lck_grp_alloc_init("kpc", kpc_config_lckgrp_attr);
 lck_mtx_init(&kpc_config_lock, kpc_config_lckgrp, LCK_ATTR_NULL);
}
