
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_grp_t ;
typedef int lck_grp_attr_t ;


 int LCK_ATTR_NULL ;
 int fpxlock ;
 int * lck_grp_alloc_init (char*,int *) ;
 int * lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int *,int ) ;

void
fpxlog_init(void)
{
 lck_grp_attr_t *lck_grp_attr = lck_grp_attr_alloc_init();
 lck_grp_t *lck_grp = lck_grp_alloc_init("fpx", lck_grp_attr);
 lck_mtx_init(&fpxlock, lck_grp, LCK_ATTR_NULL);
}
