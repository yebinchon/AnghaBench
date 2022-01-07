
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct vnop_offtoblk_args {int a_offset; scalar_t__* a_lblkno; int a_vp; } ;
struct nfsmount {int nm_biosize; } ;
typedef scalar_t__ daddr64_t ;


 int ENXIO ;
 struct nfsmount* VTONMP (int ) ;
 scalar_t__ nfs_mount_gone (struct nfsmount*) ;

int
nfs_vnop_offtoblk(
 struct vnop_offtoblk_args *ap)





{
 int biosize;
 vnode_t vp = ap->a_vp;
 struct nfsmount *nmp = VTONMP(vp);

 if (nfs_mount_gone(nmp))
  return (ENXIO);
 biosize = nmp->nm_biosize;

 *ap->a_lblkno = (daddr64_t)(ap->a_offset / biosize);

 return (0);
}
