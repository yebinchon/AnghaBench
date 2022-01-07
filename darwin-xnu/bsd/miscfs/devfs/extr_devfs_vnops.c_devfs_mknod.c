
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vfs_context_t ;
struct vnop_mknod_args {struct vnode** a_vpp; struct vnode_attr* a_vap; struct vnode* a_dvp; struct componentname* a_cnp; } ;
struct vnode_attr {scalar_t__ va_type; int va_mode; int va_gid; int va_uid; int va_rdev; } ;
struct vnode {int dummy; } ;
struct proc {int dummy; } ;
struct componentname {int cn_nameptr; int cn_context; } ;
struct TYPE_9__ {int dev; } ;
typedef TYPE_1__ devnode_type_t ;
struct TYPE_10__ {int dn_mode; int dn_gid; int dn_uid; } ;
typedef TYPE_2__ devnode_t ;
struct TYPE_11__ {TYPE_2__* de_dnp; } ;
typedef TYPE_3__ devdirent_t ;


 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 int DEV_BDEV ;
 int DEV_CDEV ;
 int EINVAL ;
 int VATTR_SET_SUPPORTED (struct vnode_attr*,int ) ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 TYPE_2__* VTODN (struct vnode*) ;
 int dev_add_entry (int ,TYPE_2__*,int ,TYPE_1__*,int *,int *,TYPE_3__**) ;
 int devfs_dntovn (TYPE_2__*,struct vnode**,struct proc*) ;
 int va_gid ;
 int va_mode ;
 int va_uid ;
 struct proc* vfs_context_proc (int ) ;

__attribute__((used)) static int
devfs_mknod(struct vnop_mknod_args *ap)







{
     struct componentname * cnp = ap->a_cnp;
 vfs_context_t ctx = cnp->cn_context;
 struct proc *p = vfs_context_proc(ctx);
 devnode_t * dev_p;
 devdirent_t * devent;
 devnode_t * dir_p;
     struct vnode * dvp = ap->a_dvp;
 int error = 0;
 devnode_type_t typeinfo;
 struct vnode_attr * vap = ap->a_vap;
 struct vnode ** vpp = ap->a_vpp;

 *vpp = ((void*)0);
 if (!(vap->va_type == VBLK) && !(vap->va_type == VCHR)) {
         return (EINVAL);
 }
 typeinfo.dev = vap->va_rdev;

 DEVFS_LOCK();

 dir_p = VTODN(dvp);

 error = dev_add_entry(cnp->cn_nameptr, dir_p,
         (vap->va_type == VBLK) ? DEV_BDEV : DEV_CDEV,
         &typeinfo, ((void*)0), ((void*)0), &devent);
 if (error) {
         goto failure;
 }
 dev_p = devent->de_dnp;
 error = devfs_dntovn(dev_p, vpp, p);
 if (error)
         goto failure;
 dev_p->dn_uid = vap->va_uid;
 dev_p->dn_gid = vap->va_gid;
 dev_p->dn_mode = vap->va_mode;
 VATTR_SET_SUPPORTED(vap, va_uid);
 VATTR_SET_SUPPORTED(vap, va_gid);
 VATTR_SET_SUPPORTED(vap, va_mode);
failure:
 DEVFS_UNLOCK();

 return (error);
}
