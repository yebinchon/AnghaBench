
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmount {scalar_t__ nm_ref; int nm_lock; int nm_state; } ;


 int NFSSTA_MOUNT_DRAIN ;
 scalar_t__ PZERO ;
 int assert (int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int msleep (scalar_t__*,int *,scalar_t__,char*,int *) ;
 int nfs_mount_cleanup (struct nfsmount*) ;

void
nfs_mount_drain_and_cleanup(struct nfsmount *nmp)
{
 lck_mtx_lock(&nmp->nm_lock);
 nmp->nm_state |= NFSSTA_MOUNT_DRAIN;
 while (nmp->nm_ref > 0) {
  msleep(&nmp->nm_ref, &nmp->nm_lock, PZERO-1, "nfs_mount_drain", ((void*)0));
 }
 assert(nmp->nm_ref == 0);
 lck_mtx_unlock(&nmp->nm_lock);
 nfs_mount_cleanup(nmp);
}
