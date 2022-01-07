
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int thread_t ;
struct nfsmount {scalar_t__ nm_readahead; scalar_t__ nm_biosize; } ;
struct nfsbuf {int nb_validoff; int nb_validend; scalar_t__ nb_dirtyend; int nb_rcred; int nb_flags; int nb_dirty; scalar_t__ nb_valid; } ;
typedef scalar_t__ off_t ;
typedef TYPE_1__* nfsnode_t ;
typedef int kauth_cred_t ;
typedef scalar_t__ daddr64_t ;
struct TYPE_7__ {scalar_t__ n_lastrahead; scalar_t__ n_size; } ;


 int CLR (int ,int) ;
 int ENXIO ;
 int IO_NOCACHE ;
 scalar_t__ ISSET (int ,int) ;
 scalar_t__ IS_VALID_CRED (int ) ;
 int NBLK_NOWAIT ;
 int NBLK_READ ;
 int NB_ASYNC ;
 int NB_CACHE ;
 int NB_DELWRI ;
 int NB_NCRDAHEAD ;
 int NB_READ ;
 struct nfsmount* NFSTONMP (TYPE_1__*) ;
 int SET (int ,int) ;
 int kauth_cred_ref (int ) ;
 int nfs_buf_get (TYPE_1__*,scalar_t__,scalar_t__,int ,int,struct nfsbuf**) ;
 int nfs_buf_read (struct nfsbuf*) ;
 int nfs_buf_release (struct nfsbuf*,int) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock_force (TYPE_1__*) ;
 int nfs_node_unlock (TYPE_1__*) ;

int
nfs_buf_readahead(nfsnode_t np, int ioflag, daddr64_t *rabnp, daddr64_t lastrabn, thread_t thd, kauth_cred_t cred)
{
 struct nfsmount *nmp = NFSTONMP(np);
 struct nfsbuf *bp;
 int error = 0;
 uint32_t nra;

 if (nfs_mount_gone(nmp))
  return (ENXIO);
 if (nmp->nm_readahead <= 0)
  return (0);
 if (*rabnp > lastrabn)
  return (0);

 for (nra = 0; (nra < nmp->nm_readahead) && (*rabnp <= lastrabn); nra++, *rabnp = *rabnp + 1) {

  if ((*rabnp * nmp->nm_biosize) >= (off_t)np->n_size) {

   *rabnp = lastrabn;
   break;
  }
  error = nfs_buf_get(np, *rabnp, nmp->nm_biosize, thd, NBLK_READ|NBLK_NOWAIT, &bp);
  if (error)
   break;
  nfs_node_lock_force(np);
  np->n_lastrahead = *rabnp;
  nfs_node_unlock(np);
  if (!bp)
   continue;
  if ((ioflag & IO_NOCACHE) && ISSET(bp->nb_flags, NB_CACHE) &&
      !bp->nb_dirty && !ISSET(bp->nb_flags, (NB_DELWRI|NB_NCRDAHEAD))) {
   CLR(bp->nb_flags, NB_CACHE);
   bp->nb_valid = 0;
   bp->nb_validoff = bp->nb_validend = -1;
  }
  if ((bp->nb_dirtyend <= 0) && !bp->nb_dirty &&
      !ISSET(bp->nb_flags, (NB_CACHE|NB_DELWRI))) {
   SET(bp->nb_flags, (NB_READ|NB_ASYNC));
   if (ioflag & IO_NOCACHE)
    SET(bp->nb_flags, NB_NCRDAHEAD);
   if (!IS_VALID_CRED(bp->nb_rcred) && IS_VALID_CRED(cred)) {
    kauth_cred_ref(cred);
    bp->nb_rcred = cred;
   }
   if ((error = nfs_buf_read(bp)))
    break;
   continue;
  }
  nfs_buf_release(bp, 1);
 }
 return (error);
}
