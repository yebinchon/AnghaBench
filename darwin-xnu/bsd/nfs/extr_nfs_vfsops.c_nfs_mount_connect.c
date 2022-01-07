
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_t ;
struct timespec {int member_0; int member_1; } ;
struct nfsmount {int nm_state; int nm_mounterror; int nm_lock; scalar_t__ nm_nss; int nm_sockflags; int nm_mountp; } ;
struct TYPE_2__ {char* f_mntfromname; } ;


 int EIO ;
 int EWOULDBLOCK ;
 int INTR ;
 scalar_t__ KERN_SUCCESS ;
 int NFSSTA_MOUNT_THREAD ;
 scalar_t__ NMFLAG (struct nfsmount*,int ) ;
 int NMSOCK_UNMOUNT ;
 int PCATCH ;
 int PSOCK ;
 int current_thread () ;
 scalar_t__ kernel_thread_start (int ,struct nfsmount*,int *) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (scalar_t__*,int *,int,char*,struct timespec*) ;
 int nfs_mount_connect_thread ;
 int nfs_sigintr (struct nfsmount*,int *,int ,int) ;
 int printf (char*,char*) ;
 int thread_deallocate (int ) ;
 TYPE_1__* vfs_statfs (int ) ;
 int wakeup (scalar_t__) ;

int
nfs_mount_connect(struct nfsmount *nmp)
{
 int error = 0, slpflag;
 thread_t thd;
 struct timespec ts = { 2, 0 };






 slpflag = NMFLAG(nmp, INTR) ? PCATCH : 0;
 lck_mtx_lock(&nmp->nm_lock);

 nmp->nm_state |= NFSSTA_MOUNT_THREAD;
 if (kernel_thread_start(nfs_mount_connect_thread, nmp, &thd) != KERN_SUCCESS) {
  nmp->nm_state &= ~NFSSTA_MOUNT_THREAD;
  nmp->nm_mounterror = EIO;
  printf("nfs mount %s start socket connect thread failed\n", vfs_statfs(nmp->nm_mountp)->f_mntfromname);
 } else {
  thread_deallocate(thd);
 }


 while (nmp->nm_state & NFSSTA_MOUNT_THREAD) {
  error = msleep(&nmp->nm_nss, &nmp->nm_lock, slpflag|PSOCK, "nfsconnectthread", &ts);
  if ((error && (error != EWOULDBLOCK)) || ((error = nfs_sigintr(nmp, ((void*)0), current_thread(), 1)))) {

   if (!nmp->nm_mounterror)
    nmp->nm_mounterror = error;

   nmp->nm_sockflags |= NMSOCK_UNMOUNT;
   if (nmp->nm_nss)
    wakeup(nmp->nm_nss);

   slpflag = 0;
  }
 }
 lck_mtx_unlock(&nmp->nm_lock);


 error = nmp->nm_mounterror;

 return (error);
}
