
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct nfsrv_uc_queue {int ucq_flags; int ucq_lock; int ucq_queue; } ;
struct nfsrv_uc_arg {int nua_qi; int nua_flags; int nua_waitflag; int nua_so; int nua_slp; } ;
typedef int socket_t ;


 int DPRINT (char*,...) ;
 int NFS_UC_QUEUED ;
 int NFS_UC_QUEUE_SLEEPING ;
 scalar_t__ OSIncrementAtomic (int *) ;
 int TAILQ_INSERT_TAIL (int ,struct nfsrv_uc_arg*,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nfsrv_uc_queue_count ;
 scalar_t__ nfsrv_uc_queue_limit ;
 scalar_t__ nfsrv_uc_queue_max_seen ;
 struct nfsrv_uc_queue* nfsrv_uc_queue_tbl ;
 int nua_svcq ;
 int panic (char*) ;
 int wakeup (struct nfsrv_uc_queue*) ;

__attribute__((used)) static void
nfsrv_uc_proxy(socket_t so, void *arg, int waitflag)
{
 struct nfsrv_uc_arg *uap = (struct nfsrv_uc_arg *)arg;
 int qi = uap->nua_qi;
 struct nfsrv_uc_queue *myqueue = &nfsrv_uc_queue_tbl[qi];

 lck_mtx_lock(myqueue->ucq_lock);
 DPRINT("nfsrv_uc_proxy called for %p (%p)\n", uap, uap->nua_slp);
 DPRINT("\tUp-call queued on %d for wakeup of %p\n", qi, myqueue);
 if (uap == ((void*)0) || uap->nua_flags & NFS_UC_QUEUED) {
  lck_mtx_unlock(myqueue->ucq_lock);
  return;
 }

 uap->nua_so = so;
 uap->nua_waitflag = waitflag;

 TAILQ_INSERT_TAIL(myqueue->ucq_queue, uap, nua_svcq);

 uap->nua_flags |= NFS_UC_QUEUED;
 if (myqueue->ucq_flags | NFS_UC_QUEUE_SLEEPING)
  wakeup(myqueue);
 lck_mtx_unlock(myqueue->ucq_lock);
}
