
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct nfsmount {int nm_biosize; } ;
struct nfsbuf {scalar_t__ nb_dirtyoff; scalar_t__ nb_dirtyend; int nb_lflags; int nb_flags; } ;
typedef int off_t ;
typedef int daddr64_t ;


 int EBUSY ;
 int ENXIO ;
 int FSDBG (int,struct nfsbuf*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ ISSET (int ,int ) ;
 int NBL_BUSY ;
 int NBOFF (struct nfsbuf*) ;
 scalar_t__ PAGE_SIZE ;
 int TAILQ_INSERT_HEAD (int *,struct nfsbuf*,int ) ;
 int VTONFS (int ) ;
 struct nfsmount* VTONMP (int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nb_free ;
 int nfs_buf_delwri_push (int) ;
 struct nfsbuf* nfs_buf_incore (int ,int ) ;
 int nfs_buf_mutex ;
 int nfs_buf_remfree (struct nfsbuf*) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfsbufdelwri ;
 int nfsbufdelwricnt ;

int
nfs_buf_page_inval(vnode_t vp, off_t offset)
{
 struct nfsmount *nmp = VTONMP(vp);
 struct nfsbuf *bp;
 int error = 0;

 if (nfs_mount_gone(nmp))
  return (ENXIO);

 lck_mtx_lock(nfs_buf_mutex);
 bp = nfs_buf_incore(VTONFS(vp), (daddr64_t)(offset / nmp->nm_biosize));
 if (!bp)
  goto out;
 FSDBG(325, bp, bp->nb_flags, bp->nb_dirtyoff, bp->nb_dirtyend);
 if (ISSET(bp->nb_lflags, NBL_BUSY)) {
  error = EBUSY;
  goto out;
 }





 if (bp->nb_dirtyend > 0) {
  int start = offset - NBOFF(bp);
  if ((bp->nb_dirtyend > start) &&
      (bp->nb_dirtyoff < (start + PAGE_SIZE))) {






   error = EBUSY;
   nfs_buf_remfree(bp);
   TAILQ_INSERT_HEAD(&nfsbufdelwri, bp, nb_free);
   nfsbufdelwricnt++;
   nfs_buf_delwri_push(1);
  }
 }
out:
 lck_mtx_unlock(nfs_buf_mutex);
 return (error);
}
