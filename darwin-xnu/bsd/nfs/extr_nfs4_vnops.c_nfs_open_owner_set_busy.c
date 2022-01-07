
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct timespec {int member_0; int member_1; } ;
struct nfsmount {int dummy; } ;
struct nfs_open_owner {int noo_flags; int noo_lock; struct nfsmount* noo_mount; } ;


 int ENXIO ;
 int INTR ;
 int NFS_OPEN_OWNER_BUSY ;
 int NFS_OPEN_OWNER_WANT ;
 scalar_t__ NMFLAG (struct nfsmount*,int ) ;
 int PCATCH ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (struct nfs_open_owner*,int *,int,char*,struct timespec*) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_sigintr (struct nfsmount*,int *,int ,int ) ;

int
nfs_open_owner_set_busy(struct nfs_open_owner *noop, thread_t thd)
{
 struct nfsmount *nmp;
 struct timespec ts = {2, 0};
 int error = 0, slpflag;

 nmp = noop->noo_mount;
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 slpflag = (NMFLAG(nmp, INTR) && thd) ? PCATCH : 0;

 lck_mtx_lock(&noop->noo_lock);
 while (noop->noo_flags & NFS_OPEN_OWNER_BUSY) {
  if ((error = nfs_sigintr(nmp, ((void*)0), thd, 0)))
   break;
  noop->noo_flags |= NFS_OPEN_OWNER_WANT;
  msleep(noop, &noop->noo_lock, slpflag, "nfs_open_owner_set_busy", &ts);
  slpflag = 0;
 }
 if (!error)
  noop->noo_flags |= NFS_OPEN_OWNER_BUSY;
 lck_mtx_unlock(&noop->noo_lock);

 return (error);
}
