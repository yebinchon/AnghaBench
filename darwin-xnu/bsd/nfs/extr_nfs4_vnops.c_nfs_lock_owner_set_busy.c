
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_t ;
struct timespec {int member_0; int member_1; } ;
struct nfsmount {int dummy; } ;
struct nfs_lock_owner {int nlo_flags; int nlo_lock; TYPE_1__* nlo_open_owner; } ;
struct TYPE_2__ {struct nfsmount* noo_mount; } ;


 int ENXIO ;
 int INTR ;
 int NFS_LOCK_OWNER_BUSY ;
 int NFS_LOCK_OWNER_WANT ;
 scalar_t__ NMFLAG (struct nfsmount*,int ) ;
 int PCATCH ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (struct nfs_lock_owner*,int *,int,char*,struct timespec*) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_sigintr (struct nfsmount*,int *,int ,int ) ;

int
nfs_lock_owner_set_busy(struct nfs_lock_owner *nlop, thread_t thd)
{
 struct nfsmount *nmp;
 struct timespec ts = {2, 0};
 int error = 0, slpflag;

 nmp = nlop->nlo_open_owner->noo_mount;
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 slpflag = (NMFLAG(nmp, INTR) && thd) ? PCATCH : 0;

 lck_mtx_lock(&nlop->nlo_lock);
 while (nlop->nlo_flags & NFS_LOCK_OWNER_BUSY) {
  if ((error = nfs_sigintr(nmp, ((void*)0), thd, 0)))
   break;
  nlop->nlo_flags |= NFS_LOCK_OWNER_WANT;
  msleep(nlop, &nlop->nlo_lock, slpflag, "nfs_lock_owner_set_busy", &ts);
  slpflag = 0;
 }
 if (!error)
  nlop->nlo_flags |= NFS_LOCK_OWNER_BUSY;
 lck_mtx_unlock(&nlop->nlo_lock);

 return (error);
}
