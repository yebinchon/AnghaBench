
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct nfsmount {int dummy; } ;
struct nfsdmap {int mru; int* next; TYPE_1__* cookies; } ;
struct nfsbuflists {int dummy; } ;
struct nfsbuf {scalar_t__ nb_lblkno; scalar_t__ nb_data; } ;
struct nfs_dir_buf_header {int ndbh_count; } ;
struct direntry {scalar_t__ d_seekoff; } ;
typedef TYPE_2__* nfsnode_t ;
typedef int int8_t ;
struct TYPE_12__ {int direofcache_misses; int direofcache_hits; } ;
struct TYPE_11__ {scalar_t__ n_eofcookie; int n_cleanblkhd; struct nfsdmap* n_cookiecache; } ;
struct TYPE_10__ {scalar_t__ key; scalar_t__ lbn; } ;


 int ENOENT ;
 int ENXIO ;
 struct nfsbuf* LIST_FIRST (struct nfsbuflists*) ;
 int LIST_INSERT_AFTER (struct nfsbuf*,struct nfsbuf*,int ) ;
 int LIST_INSERT_HEAD (int *,struct nfsbuf*,int ) ;
 int LIST_REMOVE (struct nfsbuf*,int ) ;
 int NBAC_NOWAIT ;
 int NBI_CLEAN ;
 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 struct direntry* NFS_DIRENTRY_NEXT (struct direntry*) ;
 struct direntry* NFS_DIR_BUF_FIRST_DIRENTRY (struct nfsbuf*) ;
 int NFS_DIR_COOKIE_SAME32 (scalar_t__,scalar_t__) ;
 int OSAddAtomic64 (int,int *) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nb_vnbufs ;
 scalar_t__ nfs_buf_acquire (struct nfsbuf*,int ,int ,int ) ;
 int nfs_buf_drop (struct nfsbuf*) ;
 int nfs_buf_itercomplete (TYPE_2__*,struct nfsbuflists*,int ) ;
 int nfs_buf_iterprepare (TYPE_2__*,struct nfsbuflists*,int ) ;
 int nfs_buf_mutex ;
 int nfs_buf_refget (struct nfsbuf*) ;
 int nfs_buf_refrele (struct nfsbuf*) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 scalar_t__ nfs_node_lock (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 TYPE_3__ nfsstats ;

int
nfs_dir_cookie_to_lbn(nfsnode_t dnp, uint64_t cookie, int *ptc, uint64_t *lbnp)
{
 struct nfsdmap *ndcc = dnp->n_cookiecache;
 int8_t eofptc, found;
 int i, iptc;
 struct nfsmount *nmp;
 struct nfsbuf *bp, *lastbp;
 struct nfsbuflists blist;
 struct direntry *dp, *dpptc;
 struct nfs_dir_buf_header *ndbhp;

 if (!cookie) {
  *lbnp = 0;
  *ptc = 0;
  return (0);
 }

 if (nfs_node_lock(dnp))
  return (ENOENT);

 if (cookie == dnp->n_eofcookie) {
  nfs_node_unlock(dnp);
  OSAddAtomic64(1, &nfsstats.direofcache_hits);
  *ptc = 0;
  return (-1);
 }

 eofptc = *ptc ? NFS_DIR_COOKIE_SAME32(cookie, dnp->n_eofcookie) : 0;
 iptc = -1;


 for (i = ndcc ? ndcc->mru : -1; i >= 0; i = ndcc->next[i]) {
  if (ndcc->cookies[i].key == cookie) {

   *lbnp = ndcc->cookies[i].lbn;
   nfs_node_unlock(dnp);
   OSAddAtomic64(1, &nfsstats.direofcache_hits);
   *ptc = 0;
   return (0);
  }

  if (*ptc && (iptc == -1) && NFS_DIR_COOKIE_SAME32(ndcc->cookies[i].key, cookie))
   iptc = i;
 }

 if (eofptc) {

  nfs_node_unlock(dnp);
  OSAddAtomic64(1, &nfsstats.direofcache_hits);
  return (-1);
 }
 if (iptc >= 0) {

  *lbnp = ndcc->cookies[iptc].lbn;
  nfs_node_unlock(dnp);
  OSAddAtomic64(1, &nfsstats.direofcache_hits);
  return (0);
 }
 nfs_node_unlock(dnp);





 nmp = NFSTONMP(dnp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 dpptc = ((void*)0);
 found = 0;

 lck_mtx_lock(nfs_buf_mutex);
 if (!nfs_buf_iterprepare(dnp, &blist, NBI_CLEAN)) {
  lastbp = ((void*)0);
  while ((bp = LIST_FIRST(&blist))) {
   LIST_REMOVE(bp, nb_vnbufs);
   if (!lastbp)
    LIST_INSERT_HEAD(&dnp->n_cleanblkhd, bp, nb_vnbufs);
   else
    LIST_INSERT_AFTER(lastbp, bp, nb_vnbufs);
   lastbp = bp;
   if (found)
    continue;
   nfs_buf_refget(bp);
   if (nfs_buf_acquire(bp, NBAC_NOWAIT, 0, 0)) {

    nfs_buf_refrele(bp);
    continue;
   }
   nfs_buf_refrele(bp);


   ndbhp = (struct nfs_dir_buf_header*)bp->nb_data;
   dp = NFS_DIR_BUF_FIRST_DIRENTRY(bp);
   dpptc = ((void*)0);
   for (i=0; (i < ndbhp->ndbh_count) && (cookie != dp->d_seekoff); i++) {
    if (*ptc && !dpptc && NFS_DIR_COOKIE_SAME32(cookie, dp->d_seekoff)) {
     dpptc = dp;
     iptc = i;
    }
    dp = NFS_DIRENTRY_NEXT(dp);
   }
   if ((i == ndbhp->ndbh_count) && dpptc) {

    dp = dpptc;
    i = iptc;
   } else if (i < ndbhp->ndbh_count) {
    *ptc = 0;
   }
   if (i < (ndbhp->ndbh_count-1)) {

    *lbnp = bp->nb_lblkno;
    found = 1;
   } else if (i == (ndbhp->ndbh_count-1)) {

    *lbnp = dp->d_seekoff;
    found = 1;
   }
   nfs_buf_drop(bp);
  }
  nfs_buf_itercomplete(dnp, &blist, NBI_CLEAN);
 }
 lck_mtx_unlock(nfs_buf_mutex);
 if (found) {
  OSAddAtomic64(1, &nfsstats.direofcache_hits);
  return (0);
 }


 *lbnp = cookie;
 OSAddAtomic64(1, &nfsstats.direofcache_misses);
 return (0);
}
