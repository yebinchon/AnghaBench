
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int dummy; } ;
struct domain {int dummy; } ;


 int LIST_INIT (int *) ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int ,int ,int ) ;
 int raw_mtx ;
 int raw_mtx_attr ;
 int raw_mtx_grp ;
 int raw_mtx_grp_attr ;
 int rawcb_list ;

void
raw_init(struct protosw *pp, struct domain *dp)
{
#pragma unused(pp, dp)
 static int raw_initialized = 0;


 if (!raw_initialized) {
  raw_initialized = 1;

  raw_mtx_grp_attr = lck_grp_attr_alloc_init();
  raw_mtx_grp = lck_grp_alloc_init("rawcb", raw_mtx_grp_attr);
  raw_mtx_attr = lck_attr_alloc_init();

  lck_mtx_init(raw_mtx, raw_mtx_grp, raw_mtx_attr);
  LIST_INIT(&rawcb_list);
 }
}
