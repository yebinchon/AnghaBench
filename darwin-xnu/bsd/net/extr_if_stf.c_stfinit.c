
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_GRP_ATTR_NULL ;
 int lck_grp_alloc_init (char*,int ) ;
 int stf_init_done ;
 int stf_mtx_grp ;

__attribute__((used)) static void
stfinit(void)
{
 if (!stf_init_done) {
  stf_mtx_grp = lck_grp_alloc_init("stf", LCK_GRP_ATTR_NULL);
  stf_init_done = 1;
 }
}
