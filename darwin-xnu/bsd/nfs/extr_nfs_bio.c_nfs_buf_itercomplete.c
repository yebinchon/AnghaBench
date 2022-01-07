
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfsbuflists {int dummy; } ;
struct nfsbuf {int dummy; } ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_3__ {int n_bufiterflags; struct nfsbuflists n_cleanblkhd; struct nfsbuflists n_dirtyblkhd; } ;


 int LIST_EMPTY (struct nfsbuflists*) ;
 struct nfsbuf* LIST_FIRST (struct nfsbuflists*) ;
 int LIST_INSERT_HEAD (struct nfsbuflists*,struct nfsbuf*,int ) ;
 int LIST_REMOVE (struct nfsbuf*,int ) ;
 int NBI_DIRTY ;
 int NBI_ITER ;
 int NBI_ITERWANT ;
 int nb_vnbufs ;
 int wakeup (int*) ;

void
nfs_buf_itercomplete(nfsnode_t np, struct nfsbuflists *iterheadp, int flags)
{
 struct nfsbuflists * listheadp;
 struct nfsbuf *bp;

 if (flags & NBI_DIRTY)
  listheadp = &np->n_dirtyblkhd;
 else
  listheadp = &np->n_cleanblkhd;

 while (!LIST_EMPTY(iterheadp)) {
  bp = LIST_FIRST(iterheadp);
  LIST_REMOVE(bp, nb_vnbufs);
  LIST_INSERT_HEAD(listheadp, bp, nb_vnbufs);
 }

 np->n_bufiterflags &= ~NBI_ITER;
 if (np->n_bufiterflags & NBI_ITERWANT) {
  np->n_bufiterflags &= ~NBI_ITERWANT;
  wakeup(&np->n_bufiterflags);
 }
}
