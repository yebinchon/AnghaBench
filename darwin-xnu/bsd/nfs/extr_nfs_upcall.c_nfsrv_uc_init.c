
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ucq_flags; int ucq_thd; void* ucq_lock; int ucq_queue; } ;


 int LCK_ATTR_NULL ;
 int LCK_GRP_ATTR_NULL ;
 int NFS_UC_HASH_SZ ;
 int TAILQ_INIT (int ) ;
 int THREAD_NULL ;
 int lck_grp_alloc_init (char*,int ) ;
 void* lck_mtx_alloc_init (int ,int ) ;
 int nfsrv_uc_group ;
 TYPE_1__* nfsrv_uc_queue_tbl ;
 void* nfsrv_uc_shutdown_lock ;

void
nfsrv_uc_init(void)
{
 int i;

 nfsrv_uc_group = lck_grp_alloc_init("nfs_upcall_locks", LCK_GRP_ATTR_NULL);
 for (i = 0; i < NFS_UC_HASH_SZ; i++) {
  TAILQ_INIT(nfsrv_uc_queue_tbl[i].ucq_queue);
  nfsrv_uc_queue_tbl[i].ucq_lock = lck_mtx_alloc_init(nfsrv_uc_group, LCK_ATTR_NULL);
  nfsrv_uc_queue_tbl[i].ucq_thd = THREAD_NULL;
  nfsrv_uc_queue_tbl[i].ucq_flags = 0;
 }
 nfsrv_uc_shutdown_lock = lck_mtx_alloc_init(nfsrv_uc_group, LCK_ATTR_NULL);
}
