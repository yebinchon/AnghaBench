
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct vnop_blktooff_args {int a_lblkno; scalar_t__* a_offset; int a_vp; } ;
struct nfsmount {int nm_biosize; } ;
typedef scalar_t__ off_t ;


 int ENXIO ;
 struct nfsmount* VTONMP (int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;

int
nfs_vnop_blktooff(
 struct vnop_blktooff_args *ap)





{
 int biosize;
 vnode_t vp = ap->a_vp;
 struct nfsmount *nmp = VTONMP(vp);

 if (nfs_mount_gone(nmp))
  return (ENXIO);
 biosize = nmp->nm_biosize;

 *ap->a_offset = (off_t)(ap->a_lblkno * biosize);

 return (0);
}
