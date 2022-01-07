
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsrv_uc_queue {int ucq_lock; int ucq_queue; } ;
struct nfsrv_uc_arg {int nua_flags; } ;


 int DPRINT (char*) ;
 int NFS_UC_HASH_SZ ;
 int NFS_UC_QUEUED ;
 int TAILQ_EMPTY (int ) ;
 struct nfsrv_uc_arg* TAILQ_FIRST (int ) ;
 int TAILQ_REMOVE (int ,struct nfsrv_uc_arg*,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 struct nfsrv_uc_queue* nfsrv_uc_queue_tbl ;
 int nfsrv_uc_stop () ;
 int nua_svcq ;

void
nfsrv_uc_cleanup(void)
{
 int i;

 DPRINT("Entering nfsrv_uc_cleanup\n");





 for (i = 0; i < NFS_UC_HASH_SZ; i++) {
  struct nfsrv_uc_queue *queue = &nfsrv_uc_queue_tbl[i];

  lck_mtx_lock(queue->ucq_lock);
  while (!TAILQ_EMPTY(queue->ucq_queue)) {
   struct nfsrv_uc_arg *ep = TAILQ_FIRST(queue->ucq_queue);
   TAILQ_REMOVE(queue->ucq_queue, ep, nua_svcq);
   ep->nua_flags &= ~NFS_UC_QUEUED;
  }
  lck_mtx_unlock(queue->ucq_lock);
 }

 nfsrv_uc_stop();
}
