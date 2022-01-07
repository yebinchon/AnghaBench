
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_owner {int noo_lock; scalar_t__ noo_cred; } ;


 int FREE (struct nfs_open_owner*,int ) ;
 int M_TEMP ;
 int kauth_cred_unref (scalar_t__*) ;
 int lck_mtx_destroy (int *,int ) ;
 int nfs_open_grp ;

void
nfs_open_owner_destroy(struct nfs_open_owner *noop)
{
 if (noop->noo_cred)
  kauth_cred_unref(&noop->noo_cred);
 lck_mtx_destroy(&noop->noo_lock, nfs_open_grp);
 FREE(noop, M_TEMP);
}
