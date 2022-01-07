
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
struct timespec {int member_0; int member_1; } ;
struct nfsmount {int nm_state; int nm_lock; int nm_stateinuse; } ;


 int ENXIO ;
 int INTR ;
 int NFSSTA_DEAD ;
 int NFSSTA_FORCE ;
 int NFSSTA_RECOVER ;
 scalar_t__ NMFLAG (struct nfsmount*,int ) ;
 int PCATCH ;
 int PZERO ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (int*,int *,int,char*,struct timespec*) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_mount_sock_thread_wake (struct nfsmount*) ;
 int nfs_sigintr (struct nfsmount*,int *,scalar_t__,int) ;

int
nfs_mount_state_in_use_start(struct nfsmount *nmp, thread_t thd)
{
 struct timespec ts = { 1, 0 };
 int error = 0, slpflag = (NMFLAG(nmp, INTR) && thd) ? PCATCH : 0;

 if (nfs_mount_gone(nmp))
  return (ENXIO);
 lck_mtx_lock(&nmp->nm_lock);
 if (nmp->nm_state & (NFSSTA_FORCE|NFSSTA_DEAD)) {
  lck_mtx_unlock(&nmp->nm_lock);
  return (ENXIO);
 }
 while (nmp->nm_state & NFSSTA_RECOVER) {
  if ((error = nfs_sigintr(nmp, ((void*)0), thd, 1)))
   break;
  nfs_mount_sock_thread_wake(nmp);
  msleep(&nmp->nm_state, &nmp->nm_lock, slpflag|(PZERO-1), "nfsrecoverwait", &ts);
  slpflag = 0;
 }
 if (!error)
  nmp->nm_stateinuse++;
 lck_mtx_unlock(&nmp->nm_lock);

 return (error);
}
