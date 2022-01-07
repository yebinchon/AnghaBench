
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsmount {int nm_stategenid; scalar_t__ nm_stateinuse; int nm_state; int nm_lock; int nm_mountp; } ;
struct TYPE_2__ {char* f_mntfromname; } ;


 int NFSERR_GRACE ;
 int NFSERR_OLD_STATEID ;
 int NFSSTA_RECOVER ;
 scalar_t__ PZERO ;
 int hz ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_mount_state_error_should_restart (int) ;
 int nfs_need_recover (struct nfsmount*,int) ;
 int panic (char*) ;
 int printf (char*,int,char*,int) ;
 int tsleep (int*,scalar_t__,char*,int) ;
 TYPE_1__* vfs_statfs (int ) ;
 int wakeup (scalar_t__*) ;

int
nfs_mount_state_in_use_end(struct nfsmount *nmp, int error)
{
 int restart = nfs_mount_state_error_should_restart(error);

 if (nfs_mount_gone(nmp))
  return (restart);
 lck_mtx_lock(&nmp->nm_lock);
 if (restart && (error != NFSERR_OLD_STATEID) && (error != NFSERR_GRACE)) {
  printf("nfs_mount_state_in_use_end: error %d, initiating recovery for %s, 0x%x\n",
   error, vfs_statfs(nmp->nm_mountp)->f_mntfromname, nmp->nm_stategenid);
  nfs_need_recover(nmp, error);
 }
 if (nmp->nm_stateinuse > 0)
  nmp->nm_stateinuse--;
 else
  panic("NFS mount state in use count underrun");
 if (!nmp->nm_stateinuse && (nmp->nm_state & NFSSTA_RECOVER))
  wakeup(&nmp->nm_stateinuse);
 lck_mtx_unlock(&nmp->nm_lock);
 if (error == NFSERR_GRACE)
  tsleep(&nmp->nm_state, (PZERO-1), "nfsgrace", 2*hz);

 return (restart);
}
