
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vfs_context_t ;
struct vnop_mkdir_args {int a_dvp; struct vnode** a_vpp; struct vnode_attr* a_vap; struct componentname* a_cnp; } ;
struct vnode_attr {int va_mode; } ;
struct vnode {int dummy; } ;
struct proc {int dummy; } ;
struct componentname {int cn_nameptr; int cn_context; } ;
struct TYPE_9__ {int dn_mode; int dn_gid; int dn_uid; } ;
typedef TYPE_1__ devnode_t ;
struct TYPE_10__ {TYPE_1__* de_dnp; } ;
typedef TYPE_2__ devdirent_t ;


 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 int DEV_DIR ;
 TYPE_1__* VTODN (int ) ;
 int dev_add_entry (int ,TYPE_1__*,int ,int *,int *,int *,TYPE_2__**) ;
 int devfs_dntovn (TYPE_1__*,struct vnode**,struct proc*) ;
 int dn_copy_times (TYPE_1__*,TYPE_1__*) ;
 struct proc* vfs_context_proc (int ) ;

__attribute__((used)) static int
devfs_mkdir(struct vnop_mkdir_args *ap)







{
 struct componentname * cnp = ap->a_cnp;
 vfs_context_t ctx = cnp->cn_context;
 struct proc *p = vfs_context_proc(ctx);
 int error = 0;
 devnode_t * dir_p;
 devdirent_t * nm_p;
 devnode_t * dev_p;
 struct vnode_attr * vap = ap->a_vap;
 struct vnode * * vpp = ap->a_vpp;

 DEVFS_LOCK();

 dir_p = VTODN(ap->a_dvp);
 error = dev_add_entry(cnp->cn_nameptr, dir_p, DEV_DIR,
         ((void*)0), ((void*)0), ((void*)0), &nm_p);
 if (error) {
     goto failure;
 }
 dev_p = nm_p->de_dnp;
 dev_p->dn_uid = dir_p->dn_uid;
 dev_p->dn_gid = dir_p->dn_gid;
 dev_p->dn_mode = vap->va_mode;
 dn_copy_times(dev_p, dir_p);

 error = devfs_dntovn(dev_p, vpp, p);
failure:
 DEVFS_UNLOCK();

 return error;
}
