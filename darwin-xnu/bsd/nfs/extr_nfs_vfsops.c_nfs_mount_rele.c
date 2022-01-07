
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmount {int nm_ref; int nm_state; int nm_lock; } ;


 int NFSSTA_MOUNT_DRAIN ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int panic (char*) ;
 int wakeup (int*) ;

void
nfs_mount_rele(struct nfsmount *nmp)
{
 int wup = 0;

 lck_mtx_lock(&nmp->nm_lock);
 if (nmp->nm_ref < 1)
  panic("nfs zombie mount underflow\n");
 nmp->nm_ref--;
 if (nmp->nm_ref == 0)
  wup = nmp->nm_state & NFSSTA_MOUNT_DRAIN;
 lck_mtx_unlock(&nmp->nm_lock);
 if (wup)
  wakeup(&nmp->nm_ref);
}
