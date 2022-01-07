
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSMemoryBarrier () ;
 int ecc_data_lock ;
 int ecc_data_lock_group ;
 int lck_grp_alloc_init (char*,int *) ;
 int lck_spin_init (int *,int ,int *) ;

void
ecc_log_init()
{
 ecc_data_lock_group = lck_grp_alloc_init("ecc-data", ((void*)0));
 lck_spin_init(&ecc_data_lock, ecc_data_lock_group, ((void*)0));
 OSMemoryBarrier();
}
