
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c_master_lock ;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 int lck_rw_init (int *,int *,int *) ;
 int vm_compressor_lck_attr ;
 int vm_compressor_lck_grp ;
 int vm_compressor_lck_grp_attr ;

void
vm_compressor_init_locks(void)
{
 lck_grp_attr_setdefault(&vm_compressor_lck_grp_attr);
 lck_grp_init(&vm_compressor_lck_grp, "vm_compressor", &vm_compressor_lck_grp_attr);
 lck_attr_setdefault(&vm_compressor_lck_attr);

 lck_rw_init(&c_master_lock, &vm_compressor_lck_grp, &vm_compressor_lck_attr);
}
