
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int dummy; } ;


 int LIST_INIT (int *) ;
 int MCLBYTES ;
 int UIPC_MAX_CMSG_FD ;
 int _CASSERT (int) ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 void* lck_mtx_alloc_init (int ,int ) ;
 int * lck_rw_alloc_init (int ,int ) ;
 int nmbclusters ;
 int panic (char*) ;
 int * unp_connect_lock ;
 int unp_dhead ;
 int * unp_disconnect_lock ;
 int * unp_list_mtx ;
 int unp_mtx_attr ;
 int unp_mtx_grp ;
 int unp_mtx_grp_attr ;
 int unp_shead ;
 scalar_t__ unp_zone ;
 scalar_t__ zinit (int,int,int,char*) ;

void
unp_init(void)
{
 _CASSERT(UIPC_MAX_CMSG_FD >= (MCLBYTES / sizeof(int)));
 unp_zone = zinit(sizeof (struct unpcb),
     (nmbclusters * sizeof (struct unpcb)), 4096, "unpzone");

 if (unp_zone == 0)
  panic("unp_init");
 LIST_INIT(&unp_dhead);
 LIST_INIT(&unp_shead);




 unp_mtx_grp_attr = lck_grp_attr_alloc_init();

 unp_mtx_grp = lck_grp_alloc_init("unp_list", unp_mtx_grp_attr);

 unp_mtx_attr = lck_attr_alloc_init();

 if ((unp_list_mtx = lck_rw_alloc_init(unp_mtx_grp,
     unp_mtx_attr)) == ((void*)0))
  return;

 if ((unp_disconnect_lock = lck_mtx_alloc_init(unp_mtx_grp,
  unp_mtx_attr)) == ((void*)0))
  return;

 if ((unp_connect_lock = lck_mtx_alloc_init(unp_mtx_grp,
  unp_mtx_attr)) == ((void*)0))
  return;
}
