
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vnop_mknod_args {int * a_vpp; TYPE_1__* a_vap; int a_cnp; int a_dvp; int a_context; } ;
struct nfsmount {int nm_vers; } ;
typedef int * nfsnode_t ;
struct TYPE_3__ {int va_type; } ;


 int EINVAL ;
 int ENOTSUP ;
 int ENXIO ;
 int NFSTOV (int *) ;
 int VATTR_IS_ACTIVE (TYPE_1__*,int ) ;




 int VTONFS (int ) ;
 struct nfsmount* VTONMP (int ) ;
 int nfs4_create_rpc (int ,int ,int ,TYPE_1__*,int ,int *,int **) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;
 int va_type ;
 int vtonfs_type (int,int ) ;

int
nfs4_vnop_mknod(
 struct vnop_mknod_args *ap)







{
 nfsnode_t np = ((void*)0);
 struct nfsmount *nmp;
 int error;

 nmp = VTONMP(ap->a_dvp);
 if (nfs_mount_gone(nmp))
  return (ENXIO);

 if (!VATTR_IS_ACTIVE(ap->a_vap, va_type))
  return (EINVAL);
 switch (ap->a_vap->va_type) {
 case 131:
 case 130:
 case 129:
 case 128:
  break;
 default:
  return (ENOTSUP);
 }

 error = nfs4_create_rpc(ap->a_context, VTONFS(ap->a_dvp), ap->a_cnp, ap->a_vap,
   vtonfs_type(ap->a_vap->va_type, nmp->nm_vers), ((void*)0), &np);
 if (!error)
  *ap->a_vpp = NFSTOV(np);
 return (error);
}
