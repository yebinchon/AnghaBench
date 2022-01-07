
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ le_next; } ;
struct nfsbuf {int nb_flags; int nb_error; TYPE_1__ nb_vnbufs; int nb_dirty; int nb_dirtyend; int nb_dirtyoff; TYPE_2__* nb_np; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_7__ {int n_flag; int n_dirtyblkhd; } ;


 int FSDBG (int,struct nfsbuf*,int ,int ,int ) ;
 int FSDBG_BOT (int,struct nfsbuf*,int ,int ,int ) ;
 int FSDBG_TOP (int,struct nfsbuf*,int ,int ,int ) ;
 int ISSET (int ,int ) ;
 int LIST_INSERT_HEAD (int *,struct nfsbuf*,int ) ;
 int LIST_REMOVE (struct nfsbuf*,int ) ;
 int NBOFF (struct nfsbuf*) ;
 int NB_ASYNC ;
 int NB_DELWRI ;
 int NB_DONE ;
 int NFSBUFCNTCHK () ;
 scalar_t__ NFSNOLIST ;
 int NFSTOV (TYPE_2__*) ;
 scalar_t__ NFS_A_LOT_OF_DELAYED_WRITES ;
 int NMODIFIED ;
 int SET (int ,int ) ;
 int VNODE_ASYNC_THROTTLE ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nb_vnbufs ;
 int nfs_buf_mutex ;
 int nfs_buf_release (struct nfsbuf*,int) ;
 int nfs_buf_write (struct nfsbuf*) ;
 scalar_t__ nfs_nbdwrite ;
 int nfs_node_lock_force (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int panic (char*) ;
 int vnode_waitforwrites (int ,int ,int ,int ,char*) ;

void
nfs_buf_write_delayed(struct nfsbuf *bp)
{
 nfsnode_t np = bp->nb_np;

 FSDBG_TOP(551, bp, NBOFF(bp), bp->nb_flags, 0);
 FSDBG(551, bp, bp->nb_dirtyoff, bp->nb_dirtyend, bp->nb_dirty);






 if (!ISSET(bp->nb_flags, NB_DELWRI)) {
  SET(bp->nb_flags, NB_DELWRI);

  lck_mtx_lock(nfs_buf_mutex);
  nfs_nbdwrite++;
  NFSBUFCNTCHK();
  if (bp->nb_vnbufs.le_next != NFSNOLIST)
   LIST_REMOVE(bp, nb_vnbufs);
  LIST_INSERT_HEAD(&np->n_dirtyblkhd, bp, nb_vnbufs);
  lck_mtx_unlock(nfs_buf_mutex);
 }





 vnode_waitforwrites(NFSTOV(np), VNODE_ASYNC_THROTTLE, 0, 0, "nfs_buf_write_delayed");


 nfs_node_lock_force(np);
 np->n_flag |= NMODIFIED;
 nfs_node_unlock(np);





 if (nfs_nbdwrite < 0)
  panic("nfs_buf_write_delayed: Negative nfs_nbdwrite");
 if (nfs_nbdwrite > NFS_A_LOT_OF_DELAYED_WRITES) {

  SET(bp->nb_flags, NB_ASYNC);
  nfs_buf_write(bp);
  FSDBG_BOT(551, bp, NBOFF(bp), bp->nb_flags, bp->nb_error);
  return;
 }


 SET(bp->nb_flags, NB_DONE);
 nfs_buf_release(bp, 1);
 FSDBG_BOT(551, bp, NBOFF(bp), bp->nb_flags, 0);
 return;
}
