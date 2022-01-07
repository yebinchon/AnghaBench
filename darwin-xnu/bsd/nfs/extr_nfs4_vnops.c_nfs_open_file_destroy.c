
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_open_file {int nof_lock; TYPE_1__* nof_owner; } ;
struct TYPE_2__ {int noo_lock; int noo_opens; } ;


 int FREE (struct nfs_open_file*,int ) ;
 int M_TEMP ;
 int TAILQ_REMOVE (int *,struct nfs_open_file*,int ) ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs_open_grp ;
 int nfs_open_owner_rele (TYPE_1__*) ;
 int nof_oolink ;

void
nfs_open_file_destroy(struct nfs_open_file *nofp)
{
 lck_mtx_lock(&nofp->nof_owner->noo_lock);
 TAILQ_REMOVE(&nofp->nof_owner->noo_opens, nofp, nof_oolink);
 lck_mtx_unlock(&nofp->nof_owner->noo_lock);
 nfs_open_owner_rele(nofp->nof_owner);
 lck_mtx_destroy(&nofp->nof_lock, nfs_open_grp);
 FREE(nofp, M_TEMP);
}
