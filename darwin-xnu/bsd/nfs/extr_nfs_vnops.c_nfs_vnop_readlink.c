
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int uio_t ;
typedef int uint32_t ;
struct vnop_readlink_args {int a_vp; int a_uio; int a_context; } ;
struct timespec {scalar_t__ tv_sec; } ;
struct nfsmount {int nm_vers; TYPE_1__* nm_funcs; } ;
struct nfsbuf {int nb_bufsize; int nb_error; int nb_validend; scalar_t__ nb_data; scalar_t__ nb_validoff; int nb_flags; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_13__ {int readlink_bios; int biocache_readlinks; } ;
struct TYPE_12__ {struct timespec n_rltim; } ;
struct TYPE_11__ {int (* nf_readlink_rpc ) (TYPE_2__*,scalar_t__,int*,int ) ;} ;


 int EINVAL ;
 int ENXIO ;
 int EPERM ;
 int ESTALE ;
 int FSDBG (int,TYPE_2__*,int,int ,int) ;
 scalar_t__ ISSET (int ,scalar_t__) ;
 int NBLK_META ;
 scalar_t__ NB_CACHE ;
 int NB_ERROR ;
 int NB_INVAL ;
 int NFS_MAXPATHLEN ;
 int NFS_VNOP_DBG (char*,...) ;
 int NGA_CACHED ;
 int NGA_UNCACHED ;
 int OSAddAtomic64 (int,int *) ;
 int SET (int ,int ) ;
 scalar_t__ VLNK ;
 TYPE_2__* VTONFS (int ) ;
 struct nfsmount* VTONMP (int ) ;
 int nanouptime (struct timespec*) ;
 int nfs_attrcachetimeout (TYPE_2__*) ;
 int nfs_buf_get (TYPE_2__*,int ,int ,int ,int ,struct nfsbuf**) ;
 int nfs_buf_release (struct nfsbuf*,int) ;
 int nfs_getattr (TYPE_2__*,int *,int ,int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int nfs_readlink_nocache ;
 int nfs_refresh_fh (TYPE_2__*,int ) ;
 TYPE_4__ nfsstats ;
 int stub1 (TYPE_2__*,scalar_t__,int*,int ) ;
 scalar_t__ uio_offset (int ) ;
 scalar_t__ uio_resid (int ) ;
 int uiomove (scalar_t__,int,int ) ;
 int vfs_context_thread (int ) ;
 scalar_t__ vnode_vtype (int ) ;

int
nfs_vnop_readlink(
 struct vnop_readlink_args *ap)





{
 vfs_context_t ctx = ap->a_context;
 nfsnode_t np = VTONFS(ap->a_vp);
 struct nfsmount *nmp;
 int error = 0, nfsvers;
 uint32_t buflen;
 uio_t uio = ap->a_uio;
 struct nfsbuf *bp = ((void*)0);
 struct timespec ts;
 int timeo;

 if (vnode_vtype(ap->a_vp) != VLNK)
  return (EPERM);

 if (uio_resid(uio) == 0)
  return (0);
 if (uio_offset(uio) < 0)
  return (EINVAL);

 nmp = VTONMP(ap->a_vp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);
 nfsvers = nmp->nm_vers;



 if ((error = nfs_getattr(np, ((void*)0), ctx, nfs_readlink_nocache ? NGA_UNCACHED : NGA_CACHED))) {
  FSDBG(531, np, 0xd1e0001, 0, error);
  return (error);
 }

 if (nfs_readlink_nocache) {
  timeo = nfs_attrcachetimeout(np);
  nanouptime(&ts);
 }

retry:
 OSAddAtomic64(1, &nfsstats.biocache_readlinks);
 error = nfs_buf_get(np, 0, NFS_MAXPATHLEN, vfs_context_thread(ctx), NBLK_META, &bp);
 if (error) {
  FSDBG(531, np, 0xd1e0002, 0, error);
  return (error);
 }

 if (nfs_readlink_nocache) {
  NFS_VNOP_DBG("timeo = %d ts.tv_sec = %ld need refresh = %d cached = %d\n", timeo, ts.tv_sec,
        (np->n_rltim.tv_sec + timeo) < ts.tv_sec || nfs_readlink_nocache > 1,
        ISSET(bp->nb_flags, NB_CACHE) == NB_CACHE);

  if (ISSET(bp->nb_flags, NB_CACHE) && ((nfs_readlink_nocache > 1) || ((np->n_rltim.tv_sec + timeo) < ts.tv_sec))) {
   SET(bp->nb_flags, NB_INVAL);
   nfs_buf_release(bp, 0);
   goto retry;
  }
 }
 if (!ISSET(bp->nb_flags, NB_CACHE)) {
readagain:
  OSAddAtomic64(1, &nfsstats.readlink_bios);
  buflen = bp->nb_bufsize;
  error = nmp->nm_funcs->nf_readlink_rpc(np, bp->nb_data, &buflen, ctx);
  if (error) {
   if (error == ESTALE) {
    NFS_VNOP_DBG("Stale FH from readlink rpc\n");
    error = nfs_refresh_fh(np, ctx);
    if (error == 0)
     goto readagain;
   }
   SET(bp->nb_flags, NB_ERROR);
   bp->nb_error = error;
   NFS_VNOP_DBG("readlink failed %d\n", error);
  } else {
   bp->nb_validoff = 0;
   bp->nb_validend = buflen;
   np->n_rltim = ts;
   NFS_VNOP_DBG("readlink of %.*s\n", bp->nb_validend, (char *)bp->nb_data);
  }
 } else {
  NFS_VNOP_DBG("got cached link of %.*s\n", bp->nb_validend, (char *)bp->nb_data);
 }

 if (!error && (bp->nb_validend > 0))
  error = uiomove(bp->nb_data, bp->nb_validend, uio);
 FSDBG(531, np, bp->nb_validend, 0, error);
 nfs_buf_release(bp, 1);
 return (error);
}
