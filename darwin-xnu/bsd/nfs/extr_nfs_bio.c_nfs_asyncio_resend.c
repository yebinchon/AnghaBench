
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsreq {int r_flags; struct nfsmount* r_nmp; } ;
struct nfsmount {int nm_lock; int nm_resendq; } ;


 int R_RESENDQ ;
 int TAILQ_INSERT_TAIL (int *,struct nfsreq*,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs_gss_clnt_rpcdone (struct nfsreq*) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_mount_sock_thread_wake (struct nfsmount*) ;
 int nfs_request_ref (struct nfsreq*,int) ;
 int r_rchain ;

void
nfs_asyncio_resend(struct nfsreq *req)
{
 struct nfsmount *nmp = req->r_nmp;

 if (nfs_mount_gone(nmp))
  return;

 nfs_gss_clnt_rpcdone(req);
 lck_mtx_lock(&nmp->nm_lock);
 if (!(req->r_flags & R_RESENDQ)) {
  TAILQ_INSERT_TAIL(&nmp->nm_resendq, req, r_rchain);
  req->r_flags |= R_RESENDQ;




  nfs_request_ref(req, 1);
 }
 nfs_mount_sock_thread_wake(nmp);
 lck_mtx_unlock(&nmp->nm_lock);
}
