
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_lock_owner {int nlo_lock; } ;
struct nfs_file_lock {int nfl_flags; struct nfs_lock_owner* nfl_owner; } ;


 int FREE (struct nfs_file_lock*,int ) ;
 int M_TEMP ;
 int NFS_FILE_LOCK_ALLOC ;
 int bzero (struct nfs_file_lock*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs_lock_owner_rele (struct nfs_lock_owner*) ;

void
nfs_file_lock_destroy(struct nfs_file_lock *nflp)
{
 struct nfs_lock_owner *nlop = nflp->nfl_owner;

 if (nflp->nfl_flags & NFS_FILE_LOCK_ALLOC) {
  nflp->nfl_owner = ((void*)0);
  FREE(nflp, M_TEMP);
 } else {
  lck_mtx_lock(&nlop->nlo_lock);
  bzero(nflp, sizeof(*nflp));
  lck_mtx_unlock(&nlop->nlo_lock);
 }
 nfs_lock_owner_rele(nlop);
}
