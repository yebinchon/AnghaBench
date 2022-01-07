
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nfsbuflists {int dummy; } ;
struct nfsbuf {int dummy; } ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_5__ {int n_dirtyblkhd; int n_cleanblkhd; } ;


 int EAGAIN ;
 struct nfsbuf* LIST_FIRST (struct nfsbuflists*) ;
 int LIST_INSERT_HEAD (int *,struct nfsbuf*,int ) ;
 int LIST_REMOVE (struct nfsbuf*,int ) ;
 int NBI_CLEAN ;
 int NBI_DIRTY ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nb_vnbufs ;
 int nfs_buf_acquire (struct nfsbuf*,int ,int ,int ) ;
 int nfs_buf_drop (struct nfsbuf*) ;
 int nfs_buf_itercomplete (TYPE_1__*,struct nfsbuflists*,int ) ;
 int nfs_buf_iterprepare (TYPE_1__*,struct nfsbuflists*,int ) ;
 int nfs_buf_mutex ;
 int nfs_buf_refget (struct nfsbuf*) ;
 int nfs_buf_refrele (struct nfsbuf*) ;

void
nfs_wait_bufs(nfsnode_t np)
{
 struct nfsbuf *bp;
 struct nfsbuflists blist;
 int error = 0;

 lck_mtx_lock(nfs_buf_mutex);
 if (!nfs_buf_iterprepare(np, &blist, NBI_CLEAN)) {
  while ((bp = LIST_FIRST(&blist))) {
   LIST_REMOVE(bp, nb_vnbufs);
   LIST_INSERT_HEAD(&np->n_cleanblkhd, bp, nb_vnbufs);
   nfs_buf_refget(bp);
   while ((error = nfs_buf_acquire(bp, 0, 0, 0))) {
    if (error != EAGAIN) {
     nfs_buf_refrele(bp);
     nfs_buf_itercomplete(np, &blist, NBI_CLEAN);
     lck_mtx_unlock(nfs_buf_mutex);
     return;
    }
   }
   nfs_buf_refrele(bp);
   nfs_buf_drop(bp);
  }
  nfs_buf_itercomplete(np, &blist, NBI_CLEAN);
 }
 if (!nfs_buf_iterprepare(np, &blist, NBI_DIRTY)) {
  while ((bp = LIST_FIRST(&blist))) {
   LIST_REMOVE(bp, nb_vnbufs);
   LIST_INSERT_HEAD(&np->n_dirtyblkhd, bp, nb_vnbufs);
   nfs_buf_refget(bp);
   while ((error = nfs_buf_acquire(bp, 0, 0, 0))) {
    if (error != EAGAIN) {
     nfs_buf_refrele(bp);
     nfs_buf_itercomplete(np, &blist, NBI_DIRTY);
     lck_mtx_unlock(nfs_buf_mutex);
     return;
    }
   }
   nfs_buf_refrele(bp);
   nfs_buf_drop(bp);
  }
  nfs_buf_itercomplete(np, &blist, NBI_DIRTY);
 }
 lck_mtx_unlock(nfs_buf_mutex);
}
