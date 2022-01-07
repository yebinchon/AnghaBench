
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int u_int64_t ;
struct TYPE_4__ {int nfsa_flags; int nfsa_bitmap; int nfsa_maxname; } ;
struct nfsmount {scalar_t__ nm_vers; int nm_lock; TYPE_2__ nm_fsattr; TYPE_1__* nm_fh; int nm_mountp; } ;
struct nfs_vattr {int dummy; } ;
struct nfs_fsattr {int dummy; } ;
typedef int * nfsnode_t ;
struct TYPE_3__ {int fh_len; int fh_data; } ;


 int EINVAL ;
 int NFSTOV (int *) ;
 scalar_t__ NFS_BITMAP_ISSET (int ,int ) ;
 int NFS_BITMAP_SET (int ,int ) ;
 int NFS_FATTR_HOMOGENEOUS ;
 int NFS_FATTR_MAXNAME ;
 int NFS_FSFLAG_HOMOGENEOUS ;
 int NFS_MAXNAMLEN ;
 scalar_t__ NFS_VER2 ;
 scalar_t__ NFS_VER3 ;
 int NG_MARKROOT ;
 int RPCAUTH_UNKNOWN ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs3_fsinfo (struct nfsmount*,int *,int ) ;
 int nfs3_getattr_rpc (int *,int ,int ,int ,int ,int ,struct nfs_vattr*,int *) ;
 int nfs3_pathconf_cache (struct nfsmount*,struct nfs_fsattr*) ;
 int nfs3_pathconf_rpc (int *,struct nfs_fsattr*,int ) ;
 int nfs_nget (int ,int *,int *,int ,int ,struct nfs_vattr*,int *,int ,int ,int **) ;
 int nfs_node_unlock (int *) ;
 int vnode_put (int ) ;
 int vnode_recycle (int ) ;

int
nfs3_mount(
 struct nfsmount *nmp,
 vfs_context_t ctx,
 nfsnode_t *npp)
{
 int error = 0;
 struct nfs_vattr nvattr;
 u_int64_t xid;

 *npp = ((void*)0);

 if (!nmp->nm_fh)
  return (EINVAL);





 error = nfs3_getattr_rpc(((void*)0), nmp->nm_mountp, nmp->nm_fh->fh_data, nmp->nm_fh->fh_len, 0,
   ctx, &nvattr, &xid);
 if (error)
  goto out;

 error = nfs_nget(nmp->nm_mountp, ((void*)0), ((void*)0), nmp->nm_fh->fh_data, nmp->nm_fh->fh_len,
   &nvattr, &xid, RPCAUTH_UNKNOWN, NG_MARKROOT, npp);
 if (*npp)
  nfs_node_unlock(*npp);
 if (error)
  goto out;




 if (nmp->nm_vers == NFS_VER2) {
  NFS_BITMAP_SET(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_MAXNAME);
  nmp->nm_fsattr.nfsa_maxname = NFS_MAXNAMLEN;
 } else if (nmp->nm_vers == NFS_VER3) {

  error = nfs3_fsinfo(nmp, *npp, ctx);
  if (error)
   goto out;


  if (NFS_BITMAP_ISSET(nmp->nm_fsattr.nfsa_bitmap, NFS_FATTR_HOMOGENEOUS) &&
      (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_HOMOGENEOUS)) {
   struct nfs_fsattr nfsa;
   if (!nfs3_pathconf_rpc(*npp, &nfsa, ctx)) {

    lck_mtx_lock(&nmp->nm_lock);
    nfs3_pathconf_cache(nmp, &nfsa);
    lck_mtx_unlock(&nmp->nm_lock);
   }
  }
 }
out:
 if (*npp && error) {
  vnode_put(NFSTOV(*npp));
  vnode_recycle(NFSTOV(*npp));
  *npp = ((void*)0);
 }
 return (error);
}
