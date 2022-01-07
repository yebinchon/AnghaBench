
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode_attr {int va_active; } ;


 int VATTR_INIT (struct vnode_attr*) ;
 int VNODE_NOTIFY_ATTRS ;

int
vfs_get_notify_attributes(struct vnode_attr *vap)
{
 VATTR_INIT(vap);
 vap->va_active = VNODE_NOTIFY_ATTRS;
 return 0;
}
