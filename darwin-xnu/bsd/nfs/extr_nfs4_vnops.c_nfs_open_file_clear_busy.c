
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_file {int nof_flags; int nof_lock; } ;


 int NFS_OPEN_FILE_BUSY ;
 int NFS_OPEN_FILE_WANT ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int panic (char*) ;
 int wakeup (struct nfs_open_file*) ;

void
nfs_open_file_clear_busy(struct nfs_open_file *nofp)
{
 int wanted;

 lck_mtx_lock(&nofp->nof_lock);
 if (!(nofp->nof_flags & NFS_OPEN_FILE_BUSY))
  panic("nfs_open_file_clear_busy");
 wanted = (nofp->nof_flags & NFS_OPEN_FILE_WANT);
 nofp->nof_flags &= ~(NFS_OPEN_FILE_BUSY|NFS_OPEN_FILE_WANT);
 lck_mtx_unlock(&nofp->nof_lock);
 if (wanted)
  wakeup(nofp);
}
