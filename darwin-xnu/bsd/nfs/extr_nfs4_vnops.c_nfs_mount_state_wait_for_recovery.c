
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_0; int member_1; } ;
struct nfsmount {int nm_state; int nm_lock; } ;


 int INTR ;
 int NFSSTA_RECOVER ;
 scalar_t__ NMFLAG (struct nfsmount*,int ) ;
 int PCATCH ;
 int PZERO ;
 int current_thread () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (int*,int *,int,char*,struct timespec*) ;
 int nfs_mount_sock_thread_wake (struct nfsmount*) ;
 int nfs_sigintr (struct nfsmount*,int *,int ,int) ;

int
nfs_mount_state_wait_for_recovery(struct nfsmount *nmp)
{
 struct timespec ts = { 1, 0 };
 int error = 0, slpflag = NMFLAG(nmp, INTR) ? PCATCH : 0;

 lck_mtx_lock(&nmp->nm_lock);
 while (nmp->nm_state & NFSSTA_RECOVER) {
  if ((error = nfs_sigintr(nmp, ((void*)0), current_thread(), 1)))
   break;
  nfs_mount_sock_thread_wake(nmp);
  msleep(&nmp->nm_state, &nmp->nm_lock, slpflag|(PZERO-1), "nfsrecoverwait", &ts);
  slpflag = 0;
 }
 lck_mtx_unlock(&nmp->nm_lock);

 return (error);
}
