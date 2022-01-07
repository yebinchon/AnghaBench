
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_lock_owner {int nlo_lock; int * nlo_open_owner; } ;


 int FREE (struct nfs_lock_owner*,int ) ;
 int M_TEMP ;
 int lck_mtx_destroy (int *,int ) ;
 int nfs_open_grp ;
 int nfs_open_owner_rele (int *) ;

void
nfs_lock_owner_destroy(struct nfs_lock_owner *nlop)
{
 if (nlop->nlo_open_owner) {
  nfs_open_owner_rele(nlop->nlo_open_owner);
  nlop->nlo_open_owner = ((void*)0);
 }
 lck_mtx_destroy(&nlop->nlo_lock, nfs_open_grp);
 FREE(nlop, M_TEMP);
}
