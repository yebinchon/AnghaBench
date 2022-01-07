
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct nfsmount {scalar_t__ nm_verf; } ;
struct nfsbuf {scalar_t__ nb_verf; int nb_flags; } ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_7__ {int n_needcommitcnt; } ;


 int CHECK_NEEDCOMMITCNT (TYPE_1__*) ;
 int CLR (int ,int) ;
 int ISSET (int ,int) ;
 int NB_NEEDCOMMIT ;
 int NB_STALEWVERF ;
 struct nfsmount* NFSTONMP (TYPE_1__*) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock_force (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;

void
nfs_buf_check_write_verifier(nfsnode_t np, struct nfsbuf *bp)
{
 struct nfsmount *nmp;

 if (!ISSET(bp->nb_flags, NB_NEEDCOMMIT))
  return;

 nmp = NFSTONMP(np);
 if (nfs_mount_gone(nmp))
  return;
 if (!ISSET(bp->nb_flags, NB_STALEWVERF) && (bp->nb_verf == nmp->nm_verf))
  return;


 CLR(bp->nb_flags, (NB_NEEDCOMMIT | NB_STALEWVERF));
 bp->nb_verf = 0;
 nfs_node_lock_force(np);
 np->n_needcommitcnt--;
 CHECK_NEEDCOMMITCNT(np);
 nfs_node_unlock(np);
}
