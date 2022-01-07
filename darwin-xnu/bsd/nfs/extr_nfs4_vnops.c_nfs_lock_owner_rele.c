
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_lock_owner {int nlo_refcnt; int nlo_flags; int nlo_lock; } ;


 int NFS_LOCK_OWNER_BUSY ;
 int NFS_LOCK_OWNER_LINK ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs_lock_owner_destroy (struct nfs_lock_owner*) ;
 int panic (char*) ;

void
nfs_lock_owner_rele(struct nfs_lock_owner *nlop)
{
 lck_mtx_lock(&nlop->nlo_lock);
 if (nlop->nlo_refcnt < 1)
  panic("nfs_lock_owner_rele: no refcnt");
 nlop->nlo_refcnt--;
 if (!nlop->nlo_refcnt && (nlop->nlo_flags & NFS_LOCK_OWNER_BUSY))
  panic("nfs_lock_owner_rele: busy");

 if (nlop->nlo_refcnt || (nlop->nlo_flags & NFS_LOCK_OWNER_LINK)) {
  lck_mtx_unlock(&nlop->nlo_lock);
  return;
 }

 lck_mtx_unlock(&nlop->nlo_lock);
 nfs_lock_owner_destroy(nlop);
}
