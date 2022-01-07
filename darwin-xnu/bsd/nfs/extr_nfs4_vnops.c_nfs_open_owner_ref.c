
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_owner {int noo_lock; int noo_refcnt; } ;


 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

void
nfs_open_owner_ref(struct nfs_open_owner *noop)
{
 lck_mtx_lock(&noop->noo_lock);
 noop->noo_refcnt++;
 lck_mtx_unlock(&noop->noo_lock);
}
