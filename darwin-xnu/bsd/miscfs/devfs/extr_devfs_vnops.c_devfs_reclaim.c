
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vnop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct TYPE_4__ {int * dn_vn; } ;
typedef TYPE_1__ devnode_t ;


 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 TYPE_1__* VTODN (struct vnode*) ;
 int devfs_rele_node (TYPE_1__*) ;
 int vnode_clearfsnode (struct vnode*) ;

__attribute__((used)) static int
devfs_reclaim(struct vnop_reclaim_args *ap)



{
    struct vnode * vp = ap->a_vp;
    devnode_t * dnp;

    DEVFS_LOCK();

    dnp = VTODN(vp);

    if (dnp) {

 dnp->dn_vn = ((void*)0);
 vnode_clearfsnode(vp);


 devfs_rele_node(dnp);
    }
    DEVFS_UNLOCK();

    return(0);
}
