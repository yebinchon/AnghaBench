
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsrv_uc_queue {int ucq_lock; int ucq_queue; } ;
struct nfsrv_uc_arg {size_t nua_qi; int nua_flags; } ;
struct nfsrv_sock {struct nfsrv_uc_arg* ns_ua; } ;


 int FREE (struct nfsrv_uc_arg*,int ) ;
 int M_TEMP ;
 int NFS_UC_QUEUED ;
 int OSDecrementAtomic (int *) ;
 int TAILQ_REMOVE (int ,struct nfsrv_uc_arg*,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nfsrv_uc_queue_count ;
 struct nfsrv_uc_queue* nfsrv_uc_queue_tbl ;
 int nua_svcq ;
 int printf (char*,struct nfsrv_uc_arg*) ;

void
nfsrv_uc_dequeue(struct nfsrv_sock *slp)
{
 struct nfsrv_uc_arg *ap = slp->ns_ua;
 struct nfsrv_uc_queue *myqueue = &nfsrv_uc_queue_tbl[ap->nua_qi];






 if (ap == ((void*)0) || (ap->nua_flags & NFS_UC_QUEUED) == 0)
  return;

 lck_mtx_lock(myqueue->ucq_lock);
 if (ap->nua_flags & NFS_UC_QUEUED) {
  printf("nfsrv_uc_dequeue remove %p\n", ap);
  TAILQ_REMOVE(myqueue->ucq_queue, ap, nua_svcq);
  ap->nua_flags &= ~NFS_UC_QUEUED;



 }
 FREE(slp->ns_ua, M_TEMP);
 slp->ns_ua = ((void*)0);
 lck_mtx_unlock(myqueue->ucq_lock);
}
