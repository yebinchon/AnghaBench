
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int thread_t ;
struct TYPE_7__ {scalar_t__ le_next; } ;
struct nfsbuf {int nb_flags; int nb_error; int nb_dirty; scalar_t__ nb_commitlevel; scalar_t__ nb_dirtyend; scalar_t__ nb_dirtyoff; TYPE_1__ nb_vnbufs; scalar_t__ nb_endio; scalar_t__ nb_offio; TYPE_2__* nb_np; } ;
typedef TYPE_2__* nfsnode_t ;
typedef int kauth_cred_t ;
struct TYPE_8__ {int n_error; int n_flag; int n_dirtyblkhd; int n_needcommitcnt; } ;


 int CHECK_NEEDCOMMITCNT (TYPE_2__*) ;
 int CLR (int,int) ;
 int EINTR ;
 int ERESTART ;
 scalar_t__ ISSET (int,int) ;
 int LIST_INSERT_HEAD (int *,struct nfsbuf*,int ) ;
 int LIST_REMOVE (struct nfsbuf*,int ) ;
 int NATTRINVALIDATE (TYPE_2__*) ;
 int NB_ASYNC ;
 int NB_DELWRI ;
 int NB_EINTR ;
 int NB_ERROR ;
 int NB_INVAL ;
 int NB_NEEDCOMMIT ;
 int NB_WRITEINPROG ;
 int NFSBUFCNTCHK () ;
 scalar_t__ NFSNOLIST ;
 scalar_t__ NFS_WRITE_UNSTABLE ;
 int NNEEDINVALIDATE ;
 int NWRITEERR ;
 int PAGE_SIZE ;
 int SET (int,int) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nb_vnbufs ;
 int nfs_buf_iodone (struct nfsbuf*) ;
 int nfs_buf_mutex ;
 int nfs_buf_write_dirty_pages (struct nfsbuf*,int ,int ) ;
 int nfs_nbdwrite ;
 int nfs_node_lock_force (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int round_page_32 (scalar_t__) ;
 int trunc_page_32 (scalar_t__) ;

void
nfs_buf_write_finish(struct nfsbuf *bp, thread_t thd, kauth_cred_t cred)
{
 nfsnode_t np = bp->nb_np;
 int error = (bp->nb_flags & NB_ERROR) ? bp->nb_error : 0;
 int firstpg, lastpg;
 uint32_t pagemask;

 if ((error == EINTR) || (error == ERESTART)) {
  CLR(bp->nb_flags, NB_ERROR);
  SET(bp->nb_flags, NB_EINTR);
 }

 if (!error) {

  firstpg = round_page_32(bp->nb_offio) / PAGE_SIZE;
  lastpg = (trunc_page_32(bp->nb_endio) - 1) / PAGE_SIZE;

  pagemask = ((1 << (lastpg + 1)) - 1) & ~((1 << firstpg) - 1);

  bp->nb_dirty &= ~pagemask;
 }


 if (!error && (bp->nb_commitlevel == NFS_WRITE_UNSTABLE)) {
  if (!ISSET(bp->nb_flags, NB_NEEDCOMMIT)) {
   nfs_node_lock_force(np);
   np->n_needcommitcnt++;
   nfs_node_unlock(np);
   SET(bp->nb_flags, NB_NEEDCOMMIT);
  }

  bp->nb_dirtyoff = bp->nb_offio;
  bp->nb_dirtyend = bp->nb_endio;
 } else if (ISSET(bp->nb_flags, NB_NEEDCOMMIT)) {
  nfs_node_lock_force(np);
  np->n_needcommitcnt--;
  CHECK_NEEDCOMMITCNT(np);
  nfs_node_unlock(np);
  CLR(bp->nb_flags, NB_NEEDCOMMIT);
 }

 CLR(bp->nb_flags, NB_WRITEINPROG);
 if ((error == EINTR) || (error == ERESTART) || (!error && (bp->nb_flags & NB_NEEDCOMMIT))) {
  CLR(bp->nb_flags, NB_INVAL);
  if (!ISSET(bp->nb_flags, NB_DELWRI)) {
   SET(bp->nb_flags, NB_DELWRI);
   lck_mtx_lock(nfs_buf_mutex);
   nfs_nbdwrite++;
   NFSBUFCNTCHK();
   lck_mtx_unlock(nfs_buf_mutex);
  }




  if (ISSET(bp->nb_flags, NB_ASYNC)) {

   lck_mtx_lock(nfs_buf_mutex);
   if (bp->nb_vnbufs.le_next != NFSNOLIST)
    LIST_REMOVE(bp, nb_vnbufs);
   LIST_INSERT_HEAD(&np->n_dirtyblkhd, bp, nb_vnbufs);
   lck_mtx_unlock(nfs_buf_mutex);
  }
 } else {

  if (error) {
   nfs_node_lock_force(np);
   np->n_error = error;
   np->n_flag |= (NWRITEERR | NNEEDINVALIDATE);
   NATTRINVALIDATE(np);
   nfs_node_unlock(np);
  }

  bp->nb_dirtyoff = bp->nb_dirtyend = 0;
 }

 if (!error && bp->nb_dirty)
  nfs_buf_write_dirty_pages(bp, thd, cred);
 nfs_buf_iodone(bp);
}
