
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_lock_owner {int nlo_flags; int nlo_lock; } ;


 int NFS_LOCK_OWNER_BUSY ;
 int NFS_LOCK_OWNER_WANT ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int panic (char*) ;
 int wakeup (struct nfs_lock_owner*) ;

void
nfs_lock_owner_clear_busy(struct nfs_lock_owner *nlop)
{
 int wanted;

 lck_mtx_lock(&nlop->nlo_lock);
 if (!(nlop->nlo_flags & NFS_LOCK_OWNER_BUSY))
  panic("nfs_lock_owner_clear_busy");
 wanted = (nlop->nlo_flags & NFS_LOCK_OWNER_WANT);
 nlop->nlo_flags &= ~(NFS_LOCK_OWNER_BUSY|NFS_LOCK_OWNER_WANT);
 lck_mtx_unlock(&nlop->nlo_lock);
 if (wanted)
  wakeup(nlop);
}
