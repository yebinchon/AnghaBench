
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nfsmount {int nm_lock; int nm_dreturnq; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_6__ {scalar_t__ tqe_next; } ;
struct TYPE_7__ {TYPE_1__ n_dreturn; int n_openlock; int n_openflags; } ;


 scalar_t__ NFSNOLIST ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int N_DELEG_RETURN ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int n_dreturn ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_mount_sock_thread_wake (struct nfsmount*) ;

void
nfs4_delegation_return_enqueue(nfsnode_t np)
{
 struct nfsmount *nmp;

 nmp = NFSTONMP(np);
 if (nfs_mount_gone(nmp))
  return;

 lck_mtx_lock(&np->n_openlock);
 np->n_openflags |= N_DELEG_RETURN;
 lck_mtx_unlock(&np->n_openlock);

 lck_mtx_lock(&nmp->nm_lock);
 if (np->n_dreturn.tqe_next == NFSNOLIST)
  TAILQ_INSERT_TAIL(&nmp->nm_dreturnq, np, n_dreturn);
 nfs_mount_sock_thread_wake(nmp);
 lck_mtx_unlock(&nmp->nm_lock);
}
