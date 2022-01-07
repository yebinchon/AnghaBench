
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_lock_owner {int nlo_lock; int nlo_refcnt; } ;


 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

void
nfs_lock_owner_ref(struct nfs_lock_owner *nlop)
{
 lck_mtx_lock(&nlop->nlo_lock);
 nlop->nlo_refcnt++;
 lck_mtx_unlock(&nlop->nlo_lock);
}
