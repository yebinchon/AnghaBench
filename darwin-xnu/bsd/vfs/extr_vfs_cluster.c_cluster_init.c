
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_DIRECT_READ_LOCK_BUCKETS ;
 int LIST_INIT (int *) ;
 int * cl_direct_read_locks ;
 int cl_direct_read_spin_lock ;
 int cl_mtx_attr ;
 int cl_mtx_grp ;
 int cl_mtx_grp_attr ;
 int * cl_transaction_mtxp ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int * lck_mtx_alloc_init (int ,int ) ;
 int lck_spin_init (int *,int ,int ) ;
 int panic (char*) ;

void
cluster_init(void) {



        cl_mtx_grp_attr = lck_grp_attr_alloc_init();
 cl_mtx_grp = lck_grp_alloc_init("cluster I/O", cl_mtx_grp_attr);




 cl_mtx_attr = lck_attr_alloc_init();

 cl_transaction_mtxp = lck_mtx_alloc_init(cl_mtx_grp, cl_mtx_attr);

 if (cl_transaction_mtxp == ((void*)0))
         panic("cluster_init: failed to allocate cl_transaction_mtxp");

 lck_spin_init(&cl_direct_read_spin_lock, cl_mtx_grp, cl_mtx_attr);

 for (int i = 0; i < CL_DIRECT_READ_LOCK_BUCKETS; ++i)
  LIST_INIT(&cl_direct_read_locks[i]);
}
