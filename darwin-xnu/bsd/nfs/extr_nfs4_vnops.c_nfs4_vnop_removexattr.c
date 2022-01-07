
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnop_removexattr_args {int a_context; int a_name; int a_vp; } ;
struct TYPE_2__ {int nfsa_flags; } ;
struct nfsmount {TYPE_1__ nm_fsattr; } ;


 int ENOATTR ;
 int ENOENT ;
 int ENOTSUP ;
 int ENXIO ;
 int NFS_FSFLAG_NAMED_ATTR ;
 int VTONFS (int ) ;
 struct nfsmount* VTONMP (int ) ;
 int nfs4_named_attr_remove (int ,int *,int ,int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;

int
nfs4_vnop_removexattr(
 struct vnop_removexattr_args *ap)






{
 struct nfsmount *nmp = VTONMP(ap->a_vp);
 int error;

 if (nfs_mount_gone(nmp))
  return (ENXIO);
 if (!(nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_NAMED_ATTR))
  return (ENOTSUP);

 error = nfs4_named_attr_remove(VTONFS(ap->a_vp), ((void*)0), ap->a_name, ap->a_context);
 if (error == ENOENT)
  error = ENOATTR;
 return (error);
}
