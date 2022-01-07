
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_close_args {struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
typedef int devnode_t ;


 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 int * VTODN (struct vnode*) ;
 int dn_times_now (int *,int ) ;
 scalar_t__ vnode_isinuse (struct vnode*,int) ;

__attribute__((used)) static int
devfs_close(struct vnop_close_args *ap)





{
     struct vnode * vp = ap->a_vp;
 devnode_t * dnp;

 if (vnode_isinuse(vp, 1)) {
     DEVFS_LOCK();
     dnp = VTODN(vp);
     if (dnp)
         dn_times_now(dnp, 0);
     DEVFS_UNLOCK();
 }
 return (0);
}
