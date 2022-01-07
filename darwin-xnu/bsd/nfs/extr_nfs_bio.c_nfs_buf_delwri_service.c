
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsbuf {int nb_flags; int nb_np; } ;
typedef int nfsnode_t ;


 int EAGAIN ;
 scalar_t__ ISSET (int ,int ) ;
 int NB_ASYNC ;
 int NB_NEEDCOMMIT ;
 int SET (int ,int ) ;
 struct nfsbuf* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct nfsbuf*,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nb_free ;
 int nfs_buf_acquire (struct nfsbuf*,int ,int ,int ) ;
 int nfs_buf_check_write_verifier (int ,struct nfsbuf*) ;
 int nfs_buf_drop (struct nfsbuf*) ;
 int nfs_buf_mutex ;
 int nfs_buf_refget (struct nfsbuf*) ;
 int nfs_buf_refrele (struct nfsbuf*) ;
 int nfs_buf_remfree (struct nfsbuf*) ;
 int nfs_buf_write (struct nfsbuf*) ;
 int nfs_flushcommits (int ,int) ;
 int nfsbufdelwri ;
 int nfsbufdelwricnt ;

void
nfs_buf_delwri_service(void)
{
 struct nfsbuf *bp;
 nfsnode_t np;
 int error, i = 0;

 while (i < 8 && (bp = TAILQ_FIRST(&nfsbufdelwri)) != ((void*)0)) {
  np = bp->nb_np;
  nfs_buf_remfree(bp);
  nfs_buf_refget(bp);
  while ((error = nfs_buf_acquire(bp, 0, 0, 0)) == EAGAIN);
  nfs_buf_refrele(bp);
  if (error)
   break;
  if (!bp->nb_np) {

   nfs_buf_drop(bp);
   continue;
  }
  if (ISSET(bp->nb_flags, NB_NEEDCOMMIT))
   nfs_buf_check_write_verifier(np, bp);
  if (ISSET(bp->nb_flags, NB_NEEDCOMMIT)) {

   TAILQ_INSERT_TAIL(&nfsbufdelwri, bp, nb_free);
   nfsbufdelwricnt++;
   nfs_buf_drop(bp);
   lck_mtx_unlock(nfs_buf_mutex);
   nfs_flushcommits(np, 1);
  } else {
   SET(bp->nb_flags, NB_ASYNC);
   lck_mtx_unlock(nfs_buf_mutex);
   nfs_buf_write(bp);
  }
  i++;
  lck_mtx_lock(nfs_buf_mutex);
 }
}
