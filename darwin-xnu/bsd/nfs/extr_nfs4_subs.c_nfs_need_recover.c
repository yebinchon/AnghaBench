
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsmount {int nm_state; } ;


 int NFSERR_ADMIN_REVOKED ;
 int NFSERR_EXPIRED ;
 int NFSERR_STALE_CLIENTID ;
 int NFSSTA_RECOVER ;
 int NFSSTA_RECOVER_EXPIRED ;
 int nfs_mount_sock_thread_wake (struct nfsmount*) ;

void
nfs_need_recover(struct nfsmount *nmp, int error)
{
 int wake = !(nmp->nm_state & NFSSTA_RECOVER);

 nmp->nm_state |= NFSSTA_RECOVER;
 if ((error == NFSERR_ADMIN_REVOKED) ||
     (error == NFSERR_EXPIRED) ||
     (error == NFSERR_STALE_CLIENTID))
  nmp->nm_state |= NFSSTA_RECOVER_EXPIRED;
 if (wake)
  nfs_mount_sock_thread_wake(nmp);
}
