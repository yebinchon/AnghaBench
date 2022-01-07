
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_t ;
struct timespec {int member_0; int member_1; } ;
struct nfsmount {int dummy; } ;
struct nfs_open_file {int nof_flags; int nof_lock; TYPE_1__* nof_owner; } ;
struct TYPE_2__ {struct nfsmount* noo_mount; } ;


 int ENXIO ;
 int INTR ;
 int NFS_OPEN_FILE_BUSY ;
 int NFS_OPEN_FILE_WANT ;
 scalar_t__ NMFLAG (struct nfsmount*,int ) ;
 int PCATCH ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (struct nfs_open_file*,int *,int,char*,struct timespec*) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_sigintr (struct nfsmount*,int *,int ,int ) ;

int
nfs_open_file_set_busy(struct nfs_open_file *nofp, thread_t thd)
{
 struct nfsmount *nmp;
 struct timespec ts = {2, 0};
 int error = 0, slpflag;

 nmp = nofp->nof_owner->noo_mount;
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 slpflag = (NMFLAG(nmp, INTR) && thd) ? PCATCH : 0;

 lck_mtx_lock(&nofp->nof_lock);
 while (nofp->nof_flags & NFS_OPEN_FILE_BUSY) {
  if ((error = nfs_sigintr(nmp, ((void*)0), thd, 0)))
   break;
  nofp->nof_flags |= NFS_OPEN_FILE_WANT;
  msleep(nofp, &nofp->nof_lock, slpflag, "nfs_open_file_set_busy", &ts);
  slpflag = 0;
 }
 if (!error)
  nofp->nof_flags |= NFS_OPEN_FILE_BUSY;
 lck_mtx_unlock(&nofp->nof_lock);

 return (error);
}
