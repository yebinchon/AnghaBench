
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsbuf {int nb_error; int nb_flags; } ;


 int CLR (int ,int ) ;
 int EINTR ;
 int EIO ;
 int FSDBG_BOT (int,struct nfsbuf*,int ,int ,int) ;
 int FSDBG_TOP (int,struct nfsbuf*,int ,int ,int) ;
 scalar_t__ ISSET (int ,int ) ;
 int NBOFF (struct nfsbuf*) ;
 int NB_DONE ;
 int NB_EINTR ;
 int NB_ERROR ;
 scalar_t__ PRIBIO ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int msleep (struct nfsbuf*,int ,scalar_t__,char*,int *) ;
 int nfs_buf_mutex ;

int
nfs_buf_iowait(struct nfsbuf *bp)
{
 FSDBG_TOP(549, bp, NBOFF(bp), bp->nb_flags, bp->nb_error);

 lck_mtx_lock(nfs_buf_mutex);

 while (!ISSET(bp->nb_flags, NB_DONE))
  msleep(bp, nfs_buf_mutex, PRIBIO + 1, "nfs_buf_iowait", ((void*)0));

 lck_mtx_unlock(nfs_buf_mutex);

 FSDBG_BOT(549, bp, NBOFF(bp), bp->nb_flags, bp->nb_error);


 if (ISSET(bp->nb_flags, NB_EINTR)) {
  CLR(bp->nb_flags, NB_EINTR);
  return (EINTR);
 } else if (ISSET(bp->nb_flags, NB_ERROR))
  return (bp->nb_error ? bp->nb_error : EIO);
 return (0);
}
