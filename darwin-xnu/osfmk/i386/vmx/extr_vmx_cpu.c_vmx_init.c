
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_ATTR_NULL ;
 int LCK_GRP_ATTR_NULL ;
 int assert (int ) ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_mtx_alloc_init (int ,int ) ;
 int vmx_lck_grp ;
 int vmx_lck_mtx ;

void
vmx_init()
{
 vmx_lck_grp = lck_grp_alloc_init("vmx", LCK_GRP_ATTR_NULL);
 assert(vmx_lck_grp);

 vmx_lck_mtx = lck_mtx_alloc_init(vmx_lck_grp, LCK_ATTR_NULL);
 assert(vmx_lck_mtx);
}
