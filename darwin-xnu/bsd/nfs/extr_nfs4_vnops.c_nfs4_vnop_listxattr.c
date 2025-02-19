
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int * uio_t ;
typedef scalar_t__ uint64_t ;
struct vnop_listxattr_args {int * a_size; int a_vp; int * a_uio; int a_context; } ;
struct TYPE_15__ {int nfsa_flags; } ;
struct nfsmount {TYPE_1__ nm_fsattr; } ;
struct nfsbuf {scalar_t__ nb_flags; scalar_t__ nb_data; } ;
struct nfs_vattr {int nva_flags; int nva_bitmap; } ;
struct nfs_dir_buf_header {int ndbh_count; int ndbh_entry_end; scalar_t__ ndbh_flags; int ndbh_ncgen; } ;
struct direntry {scalar_t__ d_namlen; scalar_t__ d_seekoff; int d_name; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_17__ {int biocache_readdirs; } ;
struct TYPE_16__ {int n_flag; int n_ncgen; } ;


 int EFAULT ;
 int EINTR ;
 int EIO ;
 int ENOENT ;
 int ENOTSUP ;
 int ENXIO ;
 int ERANGE ;
 int ERESTART ;
 int ETIMEDOUT ;
 scalar_t__ ISSET (scalar_t__,int ) ;
 int NBLK_READ ;
 int NB_CACHE ;
 int NDB_EOF ;
 int NDB_FULL ;
 int NFSERR_BAD_COOKIE ;
 int NFSERR_DIRBUFDROPPED ;
 int NFSTOV (TYPE_2__*) ;
 scalar_t__ NFS_BITMAP_ISSET (int ,int ) ;
 int NFS_DIRBLKSIZ ;
 struct direntry* NFS_DIRENTRY_NEXT (struct direntry*) ;
 struct direntry* NFS_DIR_BUF_FIRST_DIRENTRY (struct nfsbuf*) ;
 int NFS_FATTR_NAMED_ATTR ;
 int NFS_FFLAG_HAS_NAMED_ATTRS ;
 int NFS_FSFLAG_NAMED_ATTR ;
 int NGA_CACHED ;
 int NGA_UNCACHED ;
 int NMODIFIED ;
 int NNEEDINVALIDATE ;
 int OSAddAtomic64 (int,int *) ;
 TYPE_2__* VTONFS (int ) ;
 struct nfsmount* VTONMP (int ) ;
 TYPE_2__* nfs4_named_attr_dir_get (TYPE_2__*,int,int ) ;
 int nfs_buf_get (TYPE_2__*,scalar_t__,int ,int ,int ,struct nfsbuf**) ;
 int nfs_buf_readdir (struct nfsbuf*,int ) ;
 int nfs_buf_release (struct nfsbuf*,int) ;
 int nfs_getattr (TYPE_2__*,struct nfs_vattr*,int ,int ) ;
 int nfs_invaldir (TYPE_2__*) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_node_clear_busy (TYPE_2__*) ;
 int nfs_node_lock (TYPE_2__*) ;
 int nfs_node_set_busy (TYPE_2__*,int ) ;
 int nfs_node_unlock (TYPE_2__*) ;
 int nfs_vinvalbuf (int ,int ,int ,int) ;
 TYPE_3__ nfsstats ;
 int printf (char*,scalar_t__,int,int) ;
 scalar_t__ uio_resid (int *) ;
 int uiomove (int ,scalar_t__,int *) ;
 int vfs_context_thread (int ) ;
 int vnode_put (int ) ;
 int xattr_protected (int ) ;

int
nfs4_vnop_listxattr(
 struct vnop_listxattr_args *ap)







{
 vfs_context_t ctx = ap->a_context;
 nfsnode_t np = VTONFS(ap->a_vp);
 uio_t uio = ap->a_uio;
 nfsnode_t adnp = ((void*)0);
 struct nfsmount *nmp;
 int error, done, i;
 struct nfs_vattr nvattr;
 uint64_t cookie, nextcookie, lbn = 0;
 struct nfsbuf *bp = ((void*)0);
 struct nfs_dir_buf_header *ndbhp;
 struct direntry *dp;

 nmp = VTONMP(ap->a_vp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);

 if (!(nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_NAMED_ATTR))
  return (ENOTSUP);

 error = nfs_getattr(np, &nvattr, ctx, NGA_CACHED);
 if (error)
  return (error);
 if (NFS_BITMAP_ISSET(nvattr.nva_bitmap, NFS_FATTR_NAMED_ATTR) &&
     !(nvattr.nva_flags & NFS_FFLAG_HAS_NAMED_ATTRS))
  return (0);

 if ((error = nfs_node_set_busy(np, vfs_context_thread(ctx))))
  return (error);
 adnp = nfs4_named_attr_dir_get(np, 1, ctx);
 nfs_node_clear_busy(np);
 if (!adnp)
  goto out;

 if ((error = nfs_node_lock(adnp)))
  goto out;

 if (adnp->n_flag & NNEEDINVALIDATE) {
  adnp->n_flag &= ~NNEEDINVALIDATE;
  nfs_invaldir(adnp);
  nfs_node_unlock(adnp);
  error = nfs_vinvalbuf(NFSTOV(adnp), 0, ctx, 1);
  if (!error)
   error = nfs_node_lock(adnp);
  if (error)
   goto out;
 }




 if (adnp->n_flag & NMODIFIED) {
  nfs_invaldir(adnp);
  nfs_node_unlock(adnp);
  if ((error = nfs_vinvalbuf(NFSTOV(adnp), 0, ctx, 1)))
   goto out;
 } else {
  nfs_node_unlock(adnp);
 }

 if ((error = nfs_getattr(adnp, &nvattr, ctx, NGA_UNCACHED)))
  goto out;

 if (uio && (uio_resid(uio) == 0))
  goto out;

 done = 0;
 nextcookie = lbn = 0;

 while (!error && !done) {
  OSAddAtomic64(1, &nfsstats.biocache_readdirs);
  cookie = nextcookie;
getbuffer:
  error = nfs_buf_get(adnp, lbn, NFS_DIRBLKSIZ, vfs_context_thread(ctx), NBLK_READ, &bp);
  if (error)
   goto out;
  ndbhp = (struct nfs_dir_buf_header*)bp->nb_data;
  if (!ISSET(bp->nb_flags, NB_CACHE) || !ISSET(ndbhp->ndbh_flags, NDB_FULL)) {
   if (!ISSET(bp->nb_flags, NB_CACHE)) {
    ndbhp->ndbh_flags = 0;
    ndbhp->ndbh_count = 0;
    ndbhp->ndbh_entry_end = sizeof(*ndbhp);
    ndbhp->ndbh_ncgen = adnp->n_ncgen;
   }
   error = nfs_buf_readdir(bp, ctx);
   if (error == NFSERR_DIRBUFDROPPED)
    goto getbuffer;
   if (error)
    nfs_buf_release(bp, 1);
   if (error && (error != ENXIO) && (error != ETIMEDOUT) && (error != EINTR) && (error != ERESTART)) {
    if (!nfs_node_lock(adnp)) {
     nfs_invaldir(adnp);
     nfs_node_unlock(adnp);
    }
    nfs_vinvalbuf(NFSTOV(adnp), 0, ctx, 1);
    if (error == NFSERR_BAD_COOKIE)
     error = ENOENT;
   }
   if (error)
    goto out;
  }


  dp = NFS_DIR_BUF_FIRST_DIRENTRY(bp);
  for (i=0; i < ndbhp->ndbh_count; i++) {
   if (!xattr_protected(dp->d_name)) {
    if (uio == ((void*)0)) {
     *ap->a_size += dp->d_namlen + 1;
    } else if (uio_resid(uio) < (dp->d_namlen + 1)) {
     error = ERANGE;
    } else {
     error = uiomove(dp->d_name, dp->d_namlen+1, uio);
     if (error && (error != EFAULT))
      error = ERANGE;
    }
   }
   nextcookie = dp->d_seekoff;
   dp = NFS_DIRENTRY_NEXT(dp);
  }

  if (i == ndbhp->ndbh_count) {

   lbn = nextcookie;

   if (ISSET(ndbhp->ndbh_flags, NDB_EOF))
    done = 1;
  }
  if (!error && !done && (nextcookie == cookie)) {
   printf("nfs readdir cookie didn't change 0x%llx, %d/%d\n", cookie, i, ndbhp->ndbh_count);
   error = EIO;
  }
  nfs_buf_release(bp, 1);
 }
out:
 if (adnp)
  vnode_put(NFSTOV(adnp));
 return (error);
}
