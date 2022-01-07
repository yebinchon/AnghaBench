
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_owner {int noo_refcnt; int noo_flags; int noo_lock; } ;


 int NFS_OPEN_OWNER_BUSY ;
 int NFS_OPEN_OWNER_LINK ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs_open_owner_destroy (struct nfs_open_owner*) ;
 int panic (char*) ;

void
nfs_open_owner_rele(struct nfs_open_owner *noop)
{
 lck_mtx_lock(&noop->noo_lock);
 if (noop->noo_refcnt < 1)
  panic("nfs_open_owner_rele: no refcnt");
 noop->noo_refcnt--;
 if (!noop->noo_refcnt && (noop->noo_flags & NFS_OPEN_OWNER_BUSY))
  panic("nfs_open_owner_rele: busy");

 if (noop->noo_refcnt || (noop->noo_flags & NFS_OPEN_OWNER_LINK)) {
  lck_mtx_unlock(&noop->noo_lock);
  return;
 }

 lck_mtx_unlock(&noop->noo_lock);
 nfs_open_owner_destroy(noop);
}
