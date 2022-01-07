
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int u_int64_t ;
typedef scalar_t__ time_t ;
typedef int thread_t ;
struct nfsmount {int dummy; } ;
struct nfsbuflists {int dummy; } ;
struct nfsbuf {int nb_lblkno; } ;
struct nfs_vattr {int dummy; } ;
struct componentname {int cn_namelen; char* cn_nameptr; } ;
typedef TYPE_1__* nfsnode_t ;
struct TYPE_16__ {int fh_len; int fh_data; } ;
typedef TYPE_2__ fhandle_t ;
typedef int daddr64_t ;
struct TYPE_15__ {scalar_t__ n_attrstamp; int n_xid; int n_auth; int n_lastdbl; int n_cleanblkhd; } ;


 int ENXIO ;
 int ESRCH ;
 struct nfsbuf* LIST_FIRST (struct nfsbuflists*) ;
 int LIST_INSERT_AFTER (struct nfsbuf*,struct nfsbuf*,int ) ;
 int LIST_INSERT_HEAD (int *,struct nfsbuf*,int ) ;
 int LIST_REMOVE (struct nfsbuf*,int ) ;
 int NBAC_NOWAIT ;
 int NBI_CLEAN ;
 int NBLK_ONLYVALID ;
 int NBLK_READ ;
 int NDBS_PURGE ;
 int NDBS_UPDATE ;
 int NFSTOMP (TYPE_1__*) ;
 struct nfsmount* NFSTONMP (TYPE_1__*) ;
 int NFS_DIRBLKSIZ ;
 int NGA_CACHED ;
 int NG_MAKEENTRY ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nb_vnbufs ;
 scalar_t__ nfs_buf_acquire (struct nfsbuf*,int ,int ,int ) ;
 int nfs_buf_drop (struct nfsbuf*) ;
 int nfs_buf_get (TYPE_1__*,int ,int ,int ,int,struct nfsbuf**) ;
 int nfs_buf_itercomplete (TYPE_1__*,struct nfsbuflists*,int ) ;
 int nfs_buf_iterprepare (TYPE_1__*,struct nfsbuflists*,int ) ;
 int nfs_buf_mutex ;
 int nfs_buf_refget (struct nfsbuf*) ;
 int nfs_buf_refrele (struct nfsbuf*) ;
 int nfs_buf_release (struct nfsbuf*,int ) ;
 int nfs_dir_buf_search (struct nfsbuf*,struct componentname*,TYPE_2__*,struct nfs_vattr*,int *,scalar_t__*,int *,int ) ;
 int nfs_getattr (TYPE_1__*,struct nfs_vattr*,int ,int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_nget (int ,TYPE_1__*,struct componentname*,int ,int ,struct nfs_vattr*,int *,int ,int ,TYPE_1__**) ;
 int nfs_node_unlock (TYPE_1__*) ;
 int vfs_context_thread (int ) ;

int
nfs_dir_buf_cache_lookup(nfsnode_t dnp, nfsnode_t *npp, struct componentname *cnp, vfs_context_t ctx, int purge)
{
 nfsnode_t newnp;
 struct nfsmount *nmp;
 int error = 0, i, found = 0, count = 0;
 u_int64_t xid;
 struct nfs_vattr nvattr;
 fhandle_t fh;
 time_t attrstamp = 0;
 thread_t thd = vfs_context_thread(ctx);
 struct nfsbuf *bp, *lastbp, *foundbp;
 struct nfsbuflists blist;
 daddr64_t lbn, nextlbn;
 int dotunder = (cnp->cn_namelen > 2) && (cnp->cn_nameptr[0] == '.') && (cnp->cn_nameptr[1] == '_');

 nmp = NFSTONMP(dnp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 if (!purge)
  *npp = ((void*)0);


 lbn = dnp->n_lastdbl;
 for (i=0; i < 2; i++) {
  if ((error = nfs_buf_get(dnp, lbn, NFS_DIRBLKSIZ, thd, NBLK_READ|NBLK_ONLYVALID, &bp)))
   return (error);
  if (!bp)
   break;
  count++;
  error = nfs_dir_buf_search(bp, cnp, &fh, &nvattr, &xid, &attrstamp, &nextlbn, purge ? NDBS_PURGE : 0);
  nfs_buf_release(bp, 0);
  if (error == ESRCH) {
   error = 0;
  } else {
   found = 1;
   break;
  }
  lbn = nextlbn;
 }

 lck_mtx_lock(nfs_buf_mutex);
 if (found) {
  dnp->n_lastdbl = lbn;
  goto done;
 }
 if (!nfs_buf_iterprepare(dnp, &blist, NBI_CLEAN)) {
  lastbp = foundbp = ((void*)0);
  while ((bp = LIST_FIRST(&blist))) {
   LIST_REMOVE(bp, nb_vnbufs);
   if (!lastbp)
    LIST_INSERT_HEAD(&dnp->n_cleanblkhd, bp, nb_vnbufs);
   else
    LIST_INSERT_AFTER(lastbp, bp, nb_vnbufs);
   lastbp = bp;
   if (error || found)
    continue;
   if (!purge && dotunder && (count > 100))
    continue;
   nfs_buf_refget(bp);
   lbn = bp->nb_lblkno;
   if (nfs_buf_acquire(bp, NBAC_NOWAIT, 0, 0)) {

    nfs_buf_refrele(bp);
    continue;
   }
   nfs_buf_refrele(bp);
   count++;
   error = nfs_dir_buf_search(bp, cnp, &fh, &nvattr, &xid, &attrstamp, ((void*)0), purge ? NDBS_PURGE : 0);
   if (error == ESRCH) {
    error = 0;
   } else {
    found = 1;
    foundbp = bp;
   }
   nfs_buf_drop(bp);
  }
  if (found) {
   LIST_REMOVE(foundbp, nb_vnbufs);
   LIST_INSERT_HEAD(&dnp->n_cleanblkhd, foundbp, nb_vnbufs);
   dnp->n_lastdbl = foundbp->nb_lblkno;
  }
  nfs_buf_itercomplete(dnp, &blist, NBI_CLEAN);
 }
done:
 lck_mtx_unlock(nfs_buf_mutex);

 if (!error && found && !purge) {
  error = nfs_nget(NFSTOMP(dnp), dnp, cnp, fh.fh_data, fh.fh_len,
    &nvattr, &xid, dnp->n_auth, NG_MAKEENTRY, &newnp);
  if (error)
   return (error);
  newnp->n_attrstamp = attrstamp;
  *npp = newnp;
  nfs_node_unlock(newnp);

  if (!nfs_getattr(newnp, &nvattr, ctx, NGA_CACHED) &&
      (newnp->n_attrstamp != attrstamp)) {

   error = nfs_buf_get(dnp, lbn, NFS_DIRBLKSIZ, thd, NBLK_READ|NBLK_ONLYVALID, &bp);
   if (!error && bp) {
    attrstamp = newnp->n_attrstamp;
    xid = newnp->n_xid;
    nfs_dir_buf_search(bp, cnp, &fh, &nvattr, &xid, &attrstamp, ((void*)0), NDBS_UPDATE);
    nfs_buf_release(bp, 0);
   }
   error = 0;
  }
 }

 return (error);
}
