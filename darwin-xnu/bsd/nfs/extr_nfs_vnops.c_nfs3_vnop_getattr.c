
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct vnop_getattr_args {TYPE_5__* a_vp; int a_context; struct vnode_attr* a_vap; } ;
struct TYPE_11__ {int tv_nsec; int tv_sec; } ;
struct TYPE_10__ {int tv_nsec; int tv_sec; } ;
struct TYPE_9__ {int tv_nsec; int tv_sec; } ;
struct vnode_attr {int va_active; TYPE_4__ va_change_time; TYPE_3__ va_modify_time; TYPE_2__ va_access_time; int va_flags; } ;
struct nfsmount {int nm_vers; } ;
struct TYPE_8__ {int specdata2; int specdata1; } ;
struct nfs_vattr {int * nva_timensec; int * nva_timesec; int nva_bytes; int nva_size; int nva_fileid; int nva_nlink; int nva_gid; int nva_uid; TYPE_1__ nva_rawdev; int nva_mode; int nva_type; } ;
typedef int dev_t ;
struct TYPE_12__ {char* v_name; } ;


 int NFS3_SUPPORTED_VATTRS ;
 size_t NFSTIME_ACCESS ;
 size_t NFSTIME_CHANGE ;
 size_t NFSTIME_MODIFY ;
 int NFS_VNOP_DBG (char*,int ,char*) ;
 int NGA_CACHED ;
 scalar_t__ VATTR_IS_ACTIVE (struct vnode_attr*,int ) ;
 int VATTR_RETURN (struct vnode_attr*,int ,int ) ;
 int VATTR_SET_SUPPORTED (struct vnode_attr*,int ) ;
 int VA_64BITOBJIDS ;
 scalar_t__ VM_KERNEL_ADDRPERM (TYPE_5__*) ;
 int VTONFS (TYPE_5__*) ;
 struct nfsmount* VTONMP (TYPE_5__*) ;
 int makedev (int ,int ) ;
 int nfs_getattr (int ,struct nfs_vattr*,int ,int ) ;
 int nfs_iosize ;
 int va_access_time ;
 int va_change_time ;
 int va_data_alloc ;
 int va_data_size ;
 int va_fileid ;
 int va_gid ;
 int va_iosize ;
 int va_mode ;
 int va_modify_time ;
 int va_name ;
 int va_nlink ;
 int va_rdev ;
 int va_type ;
 int va_uid ;

int
nfs3_vnop_getattr(
 struct vnop_getattr_args *ap)





{
 int error;
 struct nfs_vattr nva;
 struct vnode_attr *vap = ap->a_vap;
 struct nfsmount *nmp;
 dev_t rdev;






 VATTR_RETURN(vap, va_iosize, nfs_iosize);
 if ((vap->va_active & NFS3_SUPPORTED_VATTRS) == 0)
  return (0);

 if (VATTR_IS_ACTIVE(ap->a_vap, va_name))
     NFS_VNOP_DBG("Getting attrs for 0x%llx, vname is %s\n",
           (uint64_t)VM_KERNEL_ADDRPERM(ap->a_vp),
           ap->a_vp->v_name ? ap->a_vp->v_name : "empty");
 error = nfs_getattr(VTONFS(ap->a_vp), &nva, ap->a_context, NGA_CACHED);
 if (error)
  return (error);


 nmp = VTONMP(ap->a_vp);
 vap->va_flags |= nmp ? (nmp->nm_vers > 2 ? VA_64BITOBJIDS : 0) : 0;
 VATTR_RETURN(vap, va_type, nva.nva_type);
 VATTR_RETURN(vap, va_mode, nva.nva_mode);
 rdev = makedev(nva.nva_rawdev.specdata1, nva.nva_rawdev.specdata2);
 VATTR_RETURN(vap, va_rdev, rdev);
 VATTR_RETURN(vap, va_uid, nva.nva_uid);
 VATTR_RETURN(vap, va_gid, nva.nva_gid);
 VATTR_RETURN(vap, va_nlink, nva.nva_nlink);
 VATTR_RETURN(vap, va_fileid, nva.nva_fileid);
 VATTR_RETURN(vap, va_data_size, nva.nva_size);
 VATTR_RETURN(vap, va_data_alloc, nva.nva_bytes);
 vap->va_access_time.tv_sec = nva.nva_timesec[NFSTIME_ACCESS];
 vap->va_access_time.tv_nsec = nva.nva_timensec[NFSTIME_ACCESS];
 VATTR_SET_SUPPORTED(vap, va_access_time);
 vap->va_modify_time.tv_sec = nva.nva_timesec[NFSTIME_MODIFY];
 vap->va_modify_time.tv_nsec = nva.nva_timensec[NFSTIME_MODIFY];
 VATTR_SET_SUPPORTED(vap, va_modify_time);
 vap->va_change_time.tv_sec = nva.nva_timesec[NFSTIME_CHANGE];
 vap->va_change_time.tv_nsec = nva.nva_timensec[NFSTIME_CHANGE];
 VATTR_SET_SUPPORTED(vap, va_change_time);


 return (error);
}
