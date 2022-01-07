
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vnode_t ;
typedef int uint64_t ;
typedef int uint ;
struct vnop_pathconf_args {int a_name; int* a_retval; int a_context; int a_vp; } ;
struct nfs_fsattr {int nfsa_flags; int nfsa_maxlink; int nfsa_maxname; int nfsa_maxfilesize; int nfsa_bitmap; } ;
struct nfsmount {scalar_t__ nm_vers; int nm_state; int nm_lock; struct nfs_fsattr nm_fsattr; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_6__ {int nva_maxlink; int nva_bitmap; } ;
struct TYPE_7__ {TYPE_1__ n_vattr; } ;


 int EINVAL ;
 int ENXIO ;
 int NFSSTA_GOTPATHCONF ;
 int NFS_BITMAP_ISSET (int ,int ) ;
 int NFS_CLEAR_ATTRIBUTES (int ) ;
 int NFS_FATTR_CASE_INSENSITIVE ;
 int NFS_FATTR_CASE_PRESERVING ;
 int NFS_FATTR_CHOWN_RESTRICTED ;
 int NFS_FATTR_MAXFILESIZE ;
 int NFS_FATTR_MAXLINK ;
 int NFS_FATTR_MAXNAME ;
 int NFS_FATTR_NO_TRUNC ;
 int NFS_FSFLAG_CASE_INSENSITIVE ;
 int NFS_FSFLAG_CASE_PRESERVING ;
 int NFS_FSFLAG_CHOWN_RESTRICTED ;
 int NFS_FSFLAG_HOMOGENEOUS ;
 int NFS_FSFLAG_NAMED_ATTR ;
 int NFS_FSFLAG_NO_TRUNC ;
 scalar_t__ NFS_VER2 ;
 scalar_t__ NFS_VER3 ;
 scalar_t__ NFS_VER4 ;
 TYPE_2__* VTONFS (int ) ;
 struct nfsmount* VTONMP (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nfs3_pathconf_cache (struct nfsmount*,struct nfs_fsattr*) ;
 int nfs3_pathconf_rpc (TYPE_2__*,struct nfs_fsattr*,int ) ;
 int nfs4_pathconf_rpc (TYPE_2__*,struct nfs_fsattr*,int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;

int
nfs_vnop_pathconf(
 struct vnop_pathconf_args *ap)






{
 vnode_t vp = ap->a_vp;
 nfsnode_t np = VTONFS(vp);
 struct nfsmount *nmp;
 struct nfs_fsattr nfsa, *nfsap;
 int error = 0;
 uint64_t maxFileSize;
 uint nbits;

 nmp = VTONMP(vp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);

 switch (ap->a_name) {
 case 131:
 case 130:
 case 133:
 case 129:
 case 134:
 case 135:
  break;
 case 132:
  if (nmp->nm_vers == NFS_VER2) {
   *ap->a_retval = 32;
   return (0);
  }
  break;
 case 128:

  if (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_NAMED_ATTR)
   break;


 default:

  return (EINVAL);
 }

 if (nmp->nm_vers == NFS_VER2)
  return (EINVAL);

 lck_mtx_lock(&nmp->nm_lock);
 if (nmp->nm_vers == NFS_VER3) {
  if (!(nmp->nm_state & NFSSTA_GOTPATHCONF)) {

   lck_mtx_unlock(&nmp->nm_lock);
   NFS_CLEAR_ATTRIBUTES(nfsa.nfsa_bitmap);
   error = nfs3_pathconf_rpc(np, &nfsa, ap->a_context);
   if (error)
    return (error);
   nmp = VTONMP(vp);
   if (nfs_mount_gone(nmp))
    return (ENXIO);
   lck_mtx_lock(&nmp->nm_lock);
   if (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_HOMOGENEOUS) {


    nfs3_pathconf_cache(nmp, &nfsa);
   }
   nfsap = &nfsa;
  } else {
   nfsap = &nmp->nm_fsattr;
  }
 } else if (!(nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_HOMOGENEOUS)) {

  lck_mtx_unlock(&nmp->nm_lock);
  NFS_CLEAR_ATTRIBUTES(nfsa.nfsa_bitmap);
  error = nfs4_pathconf_rpc(np, &nfsa, ap->a_context);
  if (error)
   return (error);
  nmp = VTONMP(vp);
  if (nfs_mount_gone(nmp))
   return (ENXIO);
  lck_mtx_lock(&nmp->nm_lock);
  nfsap = &nfsa;
 } else {
  nfsap = &nmp->nm_fsattr;
 }

 switch (ap->a_name) {
 case 131:
  if (NFS_BITMAP_ISSET(nfsap->nfsa_bitmap, NFS_FATTR_MAXLINK))
   *ap->a_retval = nfsap->nfsa_maxlink;
  else if ((nmp->nm_vers == NFS_VER4) && NFS_BITMAP_ISSET(np->n_vattr.nva_bitmap, NFS_FATTR_MAXLINK))
   *ap->a_retval = np->n_vattr.nva_maxlink;
  else
   error = EINVAL;
  break;
 case 130:
  if (NFS_BITMAP_ISSET(nfsap->nfsa_bitmap, NFS_FATTR_MAXNAME))
   *ap->a_retval = nfsap->nfsa_maxname;
  else
   error = EINVAL;
  break;
 case 133:
  if (NFS_BITMAP_ISSET(nfsap->nfsa_bitmap, NFS_FATTR_CHOWN_RESTRICTED))
   *ap->a_retval = (nfsap->nfsa_flags & NFS_FSFLAG_CHOWN_RESTRICTED) ? 200112 : 0;
  else
   error = EINVAL;
  break;
 case 129:
  if (NFS_BITMAP_ISSET(nfsap->nfsa_bitmap, NFS_FATTR_NO_TRUNC))
   *ap->a_retval = (nfsap->nfsa_flags & NFS_FSFLAG_NO_TRUNC) ? 200112 : 0;
  else
   error = EINVAL;
  break;
 case 134:
  if (NFS_BITMAP_ISSET(nfsap->nfsa_bitmap, NFS_FATTR_CASE_INSENSITIVE))
   *ap->a_retval = (nfsap->nfsa_flags & NFS_FSFLAG_CASE_INSENSITIVE) ? 0 : 1;
  else
   error = EINVAL;
  break;
 case 135:
  if (NFS_BITMAP_ISSET(nfsap->nfsa_bitmap, NFS_FATTR_CASE_PRESERVING))
   *ap->a_retval = (nfsap->nfsa_flags & NFS_FSFLAG_CASE_PRESERVING) ? 1 : 0;
  else
   error = EINVAL;
  break;
 case 128:
 case 132:
  if (!NFS_BITMAP_ISSET(nfsap->nfsa_bitmap, NFS_FATTR_MAXFILESIZE)) {
   *ap->a_retval = 64;
   error = 0;
   break;
  }
  maxFileSize = nfsap->nfsa_maxfilesize;
  nbits = 1;
  if (maxFileSize & 0xffffffff00000000ULL) {
   nbits += 32;
   maxFileSize >>= 32;
  }
  if (maxFileSize & 0xffff0000) {
   nbits += 16;
   maxFileSize >>= 16;
  }
  if (maxFileSize & 0xff00) {
   nbits += 8;
   maxFileSize >>= 8;
  }
  if (maxFileSize & 0xf0) {
   nbits += 4;
   maxFileSize >>= 4;
  }
  if (maxFileSize & 0xc) {
   nbits += 2;
   maxFileSize >>= 2;
  }
  if (maxFileSize & 0x2) {
   nbits += 1;
  }
  *ap->a_retval = nbits;
  break;
 default:
  error = EINVAL;
 }

 lck_mtx_unlock(&nmp->nm_lock);

 return (error);
}
