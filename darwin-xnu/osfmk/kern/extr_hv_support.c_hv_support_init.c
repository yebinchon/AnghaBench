
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_ATTR_NULL ;
 int LCK_GRP_ATTR_NULL ;
 int assert (int ) ;
 int hv_support_available ;
 int hv_support_lck_grp ;
 int hv_support_lck_mtx ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_mtx_alloc_init (int ,int ) ;
 int vmx_hv_support () ;

void
hv_support_init(void) {




 hv_support_lck_grp = lck_grp_alloc_init("hv_support", LCK_GRP_ATTR_NULL);
 assert(hv_support_lck_grp);

 hv_support_lck_mtx = lck_mtx_alloc_init(hv_support_lck_grp, LCK_ATTR_NULL);
 assert(hv_support_lck_mtx);
}
