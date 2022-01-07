
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_PROC_UUID_POLICY ;
 int PROC_UUID_POLICY_HASH_SIZE ;
 int hashinit (int ,int ,int *) ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int ,int ) ;
 scalar_t__ proc_uuid_policy_count ;
 int proc_uuid_policy_hash_mask ;
 int proc_uuid_policy_hashtbl ;
 int proc_uuid_policy_subsys_lck_attr ;
 int proc_uuid_policy_subsys_lck_grp ;
 int proc_uuid_policy_subsys_lck_grp_attr ;
 int proc_uuid_policy_subsys_mutex ;
 int proc_uuid_policy_table_gencount ;

void
proc_uuid_policy_init(void)
{
 proc_uuid_policy_subsys_lck_grp_attr = lck_grp_attr_alloc_init();
 proc_uuid_policy_subsys_lck_grp = lck_grp_alloc_init("proc_uuid_policy_subsys_lock", proc_uuid_policy_subsys_lck_grp_attr);
 proc_uuid_policy_subsys_lck_attr = lck_attr_alloc_init();
 lck_mtx_init(&proc_uuid_policy_subsys_mutex, proc_uuid_policy_subsys_lck_grp, proc_uuid_policy_subsys_lck_attr);

 proc_uuid_policy_hashtbl = hashinit(PROC_UUID_POLICY_HASH_SIZE, M_PROC_UUID_POLICY, &proc_uuid_policy_hash_mask);
 proc_uuid_policy_table_gencount = 1;
 proc_uuid_policy_count = 0;
}
