
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_mtx_init_ext (int *,int *,int *,int *) ;
 int queue_init (int *) ;
 scalar_t__ vm_named_entry_count ;
 int vm_named_entry_list ;
 int vm_named_entry_list_lock_data ;
 int vm_named_entry_list_lock_data_ext ;
 int vm_object_lck_attr ;
 int vm_object_lck_grp ;

void
vm_named_entry_init(void)
{
}
