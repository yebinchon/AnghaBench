
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct nfsmount {int nm_lock; int nm_state; } ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_8__ {int n_flag; } ;


 int NFSSTA_REVOKE ;
 struct nfsmount* NFSTONMP (TYPE_1__*) ;
 int NP (TYPE_1__*,char*,...) ;
 int NREVOKE ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs_mount_sock_thread_wake (struct nfsmount*) ;
 int nfs_node_lock_force (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;
 int nfs_release_open_state_for_node (TYPE_1__*,int ) ;

void
nfs_revoke_open_state_for_node(nfsnode_t np)
{
 struct nfsmount *nmp;


 nfs_node_lock_force(np);
 if (np->n_flag & NREVOKE)
 {
  NP(np, "nfs_revoke_open_state_for_node(): already revoked");
  nfs_node_unlock(np);
  return;
 }
 np->n_flag |= NREVOKE;
 nfs_node_unlock(np);

 nfs_release_open_state_for_node(np, 0);
 NP(np, "nfs: state lost for %p 0x%x", np, np->n_flag);


 if ((nmp = NFSTONMP(np))) {
  lck_mtx_lock(&nmp->nm_lock);
  nmp->nm_state |= NFSSTA_REVOKE;
  nfs_mount_sock_thread_wake(nmp);
  lck_mtx_unlock(&nmp->nm_lock);
 }
}
