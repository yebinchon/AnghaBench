
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnop_readlink_args {struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct uio {int dummy; } ;
struct TYPE_6__ {int namelen; int name; } ;
struct TYPE_5__ {TYPE_2__ Slnk; } ;
struct TYPE_7__ {scalar_t__ dn_type; TYPE_1__ dn_typeinfo; } ;
typedef TYPE_3__ devnode_t ;


 scalar_t__ DEV_SLNK ;
 int EINVAL ;
 TYPE_3__* VTODN (struct vnode*) ;
 int uiomove (int ,int ,struct uio*) ;

__attribute__((used)) static int
devfs_readlink(struct vnop_readlink_args *ap)





{
 struct vnode *vp = ap->a_vp;
 struct uio *uio = ap->a_uio;
 devnode_t * lnk_node;
 int error = 0;


 lnk_node = VTODN(vp);

 if (lnk_node->dn_type != DEV_SLNK) {
         error = EINVAL;
  goto out;
 }
 error = uiomove(lnk_node->dn_typeinfo.Slnk.name,
   lnk_node->dn_typeinfo.Slnk.namelen, uio);
out:
 return error;
}
