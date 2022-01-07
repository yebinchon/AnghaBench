
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int uio_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint16_t ;
typedef int thread_t ;
struct vnop_readdir_args {int a_flags; int* a_eofflag; int* a_numdirent; int a_uio; int a_vp; int a_context; } ;
struct nfsmount {int nm_vers; int nm_state; } ;
struct nfsbuf {scalar_t__ nb_flags; scalar_t__ nb_data; } ;
struct nfs_dir_buf_header {scalar_t__ ndbh_count; int ndbh_entry_end; scalar_t__ ndbh_flags; int ndbh_ncgen; } ;
struct direntry {scalar_t__ d_seekoff; scalar_t__ d_reclen; int d_namlen; int d_name; int d_type; int d_ino; } ;
struct dirent {int d_name; scalar_t__ d_namlen; int d_type; int d_ino; scalar_t__ d_reclen; } ;
typedef TYPE_2__* nfsnode_t ;
typedef int dent ;
struct TYPE_14__ {int biocache_readdirs; } ;
struct TYPE_12__ {int nva_flags; } ;
struct TYPE_13__ {int n_flag; int n_ncgen; TYPE_1__ n_vattr; } ;


 int EINTR ;
 int EIO ;
 int ENOENT ;
 int ENXIO ;
 int EPERM ;
 int ERESTART ;
 int ETIMEDOUT ;
 scalar_t__ ISSET (scalar_t__,int ) ;
 int NBLK_READ ;
 int NB_CACHE ;
 int NDB_EOF ;
 int NDB_FULL ;
 int NFSERR_BAD_COOKIE ;
 int NFSERR_DIRBUFDROPPED ;
 int NFSSTA_BIGCOOKIES ;
 int NFS_DIRBLKSIZ ;
 struct direntry* NFS_DIRENTRY_NEXT (struct direntry*) ;
 scalar_t__ NFS_DIRENT_LEN (scalar_t__) ;
 struct direntry* NFS_DIR_BUF_FIRST_DIRENTRY (struct nfsbuf*) ;
 scalar_t__ NFS_DIR_COOKIE_POTENTIALLY_TRUNCATED (scalar_t__) ;
 scalar_t__ NFS_DIR_COOKIE_SAME32 (scalar_t__,scalar_t__) ;
 int NFS_FFLAG_TRIGGER ;
 int NFS_VER4 ;
 int NGA_UNCACHED ;
 int NMODIFIED ;
 int NNEEDINVALIDATE ;
 int OSAddAtomic64 (int,int *) ;
 scalar_t__ VDIR ;
 int VNODE_READDIR_EXTENDED ;
 TYPE_2__* VTONFS (int ) ;
 struct nfsmount* VTONMP (int ) ;
 int bzero (char*,int) ;
 int nfs_buf_get (TYPE_2__*,scalar_t__,int ,int ,int ,struct nfsbuf**) ;
 int nfs_buf_readdir (struct nfsbuf*,int ) ;
 int nfs_buf_release (struct nfsbuf*,int) ;
 int nfs_dir_cookie_cache (TYPE_2__*,scalar_t__,scalar_t__) ;
 int nfs_dir_cookie_to_lbn (TYPE_2__*,scalar_t__,int*,scalar_t__*) ;
 int nfs_getattr (TYPE_2__*,int *,int ,int ) ;
 int nfs_invaldir (TYPE_2__*) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_lock (TYPE_2__*) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int nfs_vinvalbuf (int ,int ,int ,int) ;
 TYPE_3__ nfsstats ;
 int printf (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int strlcpy (int ,int ,scalar_t__) ;
 scalar_t__ uio_offset (int ) ;
 scalar_t__ uio_resid (int ) ;
 int uio_setoffset (int ,scalar_t__) ;
 int uiomove (char*,scalar_t__,int ) ;
 int vfs_context_thread (int ) ;
 scalar_t__ vnode_vtype (int ) ;

int
nfs_vnop_readdir(
 struct vnop_readdir_args *ap)
{
 vfs_context_t ctx = ap->a_context;
 vnode_t dvp = ap->a_vp;
 nfsnode_t dnp = VTONFS(dvp);
 struct nfsmount *nmp;
 uio_t uio = ap->a_uio;
 int error, nfsvers, extended, numdirent, bigcookies, ptc, done;
 uint16_t i, iptc, rlen, nlen;
 uint64_t cookie, nextcookie, lbn = 0;
 struct nfsbuf *bp = ((void*)0);
 struct nfs_dir_buf_header *ndbhp;
 struct direntry *dp, *dpptc;
 struct dirent dent;
 char *cp = ((void*)0);
 thread_t thd;

 nmp = VTONMP(dvp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;
 bigcookies = (nmp->nm_state & NFSSTA_BIGCOOKIES);
 extended = (ap->a_flags & VNODE_READDIR_EXTENDED);

 if (vnode_vtype(dvp) != VDIR)
  return (EPERM);

 if (ap->a_eofflag)
  *ap->a_eofflag = 0;

 if (uio_resid(uio) == 0)
  return (0);

 if ((nfsvers >= NFS_VER4) && (dnp->n_vattr.nva_flags & NFS_FFLAG_TRIGGER)) {

  return (0);
 }

 thd = vfs_context_thread(ctx);
 numdirent = done = 0;
 nextcookie = uio_offset(uio);
 ptc = bigcookies && NFS_DIR_COOKIE_POTENTIALLY_TRUNCATED(nextcookie);

 if ((error = nfs_node_lock(dnp)))
  goto out;

 if (dnp->n_flag & NNEEDINVALIDATE) {
  dnp->n_flag &= ~NNEEDINVALIDATE;
  nfs_invaldir(dnp);
  nfs_node_unlock(dnp);
  error = nfs_vinvalbuf(dvp, 0, ctx, 1);
  if (!error)
   error = nfs_node_lock(dnp);
  if (error)
   goto out;
 }




 if (!nextcookie) {
  if (dnp->n_flag & NMODIFIED) {
   nfs_invaldir(dnp);
   nfs_node_unlock(dnp);
   if ((error = nfs_vinvalbuf(dvp, 0, ctx, 1)))
    goto out;
  } else {
   nfs_node_unlock(dnp);
  }

  if ((error = nfs_getattr(dnp, ((void*)0), ctx, NGA_UNCACHED)))
   goto out;
 } else {
  nfs_node_unlock(dnp);
 }

 error = nfs_dir_cookie_to_lbn(dnp, nextcookie, &ptc, &lbn);
 if (error) {
  if (error < 0) {
   done = 1;
   error = 0;
  }
  if (ap->a_eofflag)
   *ap->a_eofflag = 1;
 }

 while (!error && !done) {
  OSAddAtomic64(1, &nfsstats.biocache_readdirs);
  cookie = nextcookie;
getbuffer:
  error = nfs_buf_get(dnp, lbn, NFS_DIRBLKSIZ, thd, NBLK_READ, &bp);
  if (error)
   goto out;
  ndbhp = (struct nfs_dir_buf_header*)bp->nb_data;
  if (!ISSET(bp->nb_flags, NB_CACHE) || !ISSET(ndbhp->ndbh_flags, NDB_FULL)) {
   if (!ISSET(bp->nb_flags, NB_CACHE)) {
    ndbhp->ndbh_flags = 0;
    ndbhp->ndbh_count = 0;
    ndbhp->ndbh_entry_end = sizeof(*ndbhp);
    ndbhp->ndbh_ncgen = dnp->n_ncgen;
   }
   error = nfs_buf_readdir(bp, ctx);
   if (error == NFSERR_DIRBUFDROPPED)
    goto getbuffer;
   if (error)
    nfs_buf_release(bp, 1);
   if (error && (error != ENXIO) && (error != ETIMEDOUT) && (error != EINTR) && (error != ERESTART)) {
    if (!nfs_node_lock(dnp)) {
     nfs_invaldir(dnp);
     nfs_node_unlock(dnp);
    }
    nfs_vinvalbuf(dvp, 0, ctx, 1);
    if (error == NFSERR_BAD_COOKIE)
     error = ENOENT;
   }
   if (error)
    goto out;
  }


  dp = NFS_DIR_BUF_FIRST_DIRENTRY(bp);
  i = 0;
  if ((lbn != cookie) && !(ptc && NFS_DIR_COOKIE_SAME32(lbn, cookie))) {
   dpptc = ((void*)0);
   iptc = 0;
   for (; (i < ndbhp->ndbh_count) && (cookie != dp->d_seekoff); i++) {
    if (ptc && !dpptc && NFS_DIR_COOKIE_SAME32(cookie, dp->d_seekoff)) {
     iptc = i;
     dpptc = dp;
    }
    nextcookie = dp->d_seekoff;
    dp = NFS_DIRENTRY_NEXT(dp);
   }
   if ((i == ndbhp->ndbh_count) && dpptc) {
    i = iptc;
    dp = dpptc;
   }
   if (i < ndbhp->ndbh_count) {
    nextcookie = dp->d_seekoff;
    dp = NFS_DIRENTRY_NEXT(dp);
    i++;
   }
  }
  ptc = 0;


  for (; i < ndbhp->ndbh_count; i++) {
   if (extended) {
    rlen = dp->d_reclen;
    cp = (char*)dp;
   } else {
    if (!cp) {
     cp = (char*)&dent;
     bzero(cp, sizeof(dent));
    }
    if (dp->d_namlen > (sizeof(dent.d_name) - 1))
     nlen = sizeof(dent.d_name) - 1;
    else
     nlen = dp->d_namlen;
    rlen = NFS_DIRENT_LEN(nlen);
    dent.d_reclen = rlen;
    dent.d_ino = dp->d_ino;
    dent.d_type = dp->d_type;
    dent.d_namlen = nlen;
    strlcpy(dent.d_name, dp->d_name, nlen + 1);
   }

   if (rlen > uio_resid(uio)) {
    done = 1;
    break;
   }
   if ((error = uiomove(cp, rlen, uio)))
    break;
   numdirent++;
   nextcookie = dp->d_seekoff;
   dp = NFS_DIRENTRY_NEXT(dp);
  }

  if (i == ndbhp->ndbh_count) {

   lbn = nextcookie;

   if (ISSET(ndbhp->ndbh_flags, NDB_EOF)) {
    done = 1;
    if (ap->a_eofflag)
     *ap->a_eofflag = 1;
   }
  }
  if (!error)
   uio_setoffset(uio, nextcookie);
  if (!error && !done && (nextcookie == cookie)) {
   printf("nfs readdir cookie didn't change 0x%llx, %d/%d\n", cookie, i, ndbhp->ndbh_count);
   error = EIO;
  }
  nfs_buf_release(bp, 1);
 }

 if (!error)
  nfs_dir_cookie_cache(dnp, nextcookie, lbn);

 if (ap->a_numdirent)
  *ap->a_numdirent = numdirent;
out:
 return (error);
}
