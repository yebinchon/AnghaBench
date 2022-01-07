
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* lck_attr_alloc_init () ;
 void* lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_alloc_init (void*,void*) ;
 void* qf_lck_attr ;
 void* qf_lck_grp ;
 int qf_lck_grp_attr ;
 void* quota_list_lck_attr ;
 void* quota_list_lck_grp ;
 int quota_list_lck_grp_attr ;
 int quota_list_mtx_lock ;

void
dqinit(void)
{



 quota_list_lck_grp_attr= lck_grp_attr_alloc_init();
 quota_list_lck_grp = lck_grp_alloc_init("quota list", quota_list_lck_grp_attr);




 quota_list_lck_attr = lck_attr_alloc_init();




 quota_list_mtx_lock = lck_mtx_alloc_init(quota_list_lck_grp, quota_list_lck_attr);





 qf_lck_grp_attr= lck_grp_attr_alloc_init();
 qf_lck_grp = lck_grp_alloc_init("quota file", qf_lck_grp_attr);




 qf_lck_attr = lck_attr_alloc_init();
}
