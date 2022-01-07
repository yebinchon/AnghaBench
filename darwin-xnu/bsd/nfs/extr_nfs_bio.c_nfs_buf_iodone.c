
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nfsbuf {int nb_error; int nb_flags; int nb_lflags; TYPE_1__* nb_np; } ;
struct TYPE_4__ {int n_numoutput; } ;


 int CLR (int ,int ) ;
 int FSDBG_BOT (int,struct nfsbuf*,int ,int ,int ) ;
 int FSDBG_TOP (int,struct nfsbuf*,int ,int ,int ) ;
 scalar_t__ ISSET (int ,int ) ;
 int NBL_WANTED ;
 int NBOFF (struct nfsbuf*) ;
 int NB_ASYNC ;
 int NB_DONE ;
 int NB_READ ;
 int NB_WRITEINPROG ;
 int NFSTOV (TYPE_1__*) ;
 int SET (int ,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nfs_buf_mutex ;
 int nfs_buf_release (struct nfsbuf*,int) ;
 int nfs_node_lock_force (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;
 int panic (char*) ;
 int vnode_writedone (int ) ;
 int wakeup (struct nfsbuf*) ;

void
nfs_buf_iodone(struct nfsbuf *bp)
{

 FSDBG_TOP(550, bp, NBOFF(bp), bp->nb_flags, bp->nb_error);

 if (ISSET(bp->nb_flags, NB_DONE))
  panic("nfs_buf_iodone already");

 if (!ISSET(bp->nb_flags, NB_READ)) {
  CLR(bp->nb_flags, NB_WRITEINPROG);




  vnode_writedone(NFSTOV(bp->nb_np));
  nfs_node_lock_force(bp->nb_np);
  bp->nb_np->n_numoutput--;
  nfs_node_unlock(bp->nb_np);
 }
 if (ISSET(bp->nb_flags, NB_ASYNC)) {
  SET(bp->nb_flags, NB_DONE);
  nfs_buf_release(bp, 1);
 } else {
         lck_mtx_lock(nfs_buf_mutex);
  SET(bp->nb_flags, NB_DONE);
  CLR(bp->nb_lflags, NBL_WANTED);
         lck_mtx_unlock(nfs_buf_mutex);
  wakeup(bp);
 }

 FSDBG_BOT(550, bp, NBOFF(bp), bp->nb_flags, bp->nb_error);
}
