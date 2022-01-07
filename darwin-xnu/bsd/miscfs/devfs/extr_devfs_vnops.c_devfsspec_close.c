
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_close_args {struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
typedef int devnode_t ;


 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 int VOCALL (int ,int ,struct vnop_close_args*) ;
 int VOFFSET (int ) ;
 int * VTODN (struct vnode*) ;
 int dn_times_now (int *,int ) ;
 int spec_vnodeop_p ;
 scalar_t__ vnode_isinuse (struct vnode*,int ) ;
 int vnop_close ;

__attribute__((used)) static int
devfsspec_close(struct vnop_close_args *ap)





{
     struct vnode * vp = ap->a_vp;
 devnode_t * dnp;

 if (vnode_isinuse(vp, 0)) {
     DEVFS_LOCK();
     dnp = VTODN(vp);
     if (dnp)
         dn_times_now(dnp, 0);
     DEVFS_UNLOCK();
 }

 return (VOCALL (spec_vnodeop_p, VOFFSET(vnop_close), ap));
}
