
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct vnop_getattr_args {struct vnode_attr* a_vap; TYPE_1__* a_vp; } ;
struct vnode_attr {int dummy; } ;
typedef TYPE_2__* mockfs_fsnode_t ;
struct TYPE_4__ {int type; int size; } ;
struct TYPE_3__ {scalar_t__ v_data; } ;


 int VATTR_RETURN (struct vnode_attr*,int ,int) ;
 int VEXEC ;
 int VREAD ;
 int VWRITE ;
 int bzero (struct vnode_attr*,int) ;
 int va_data_alloc ;
 int va_data_size ;
 int va_fileid ;
 int va_mode ;
 int va_nlink ;
 int va_total_alloc ;
 int va_total_size ;

int mockfs_getattr(struct vnop_getattr_args * ap)
{




 vnode_t vp;
 mockfs_fsnode_t fsnode;
 struct vnode_attr * vap;

 vp = ap->a_vp;
 fsnode = (mockfs_fsnode_t)vp->v_data;
 vap = ap->a_vap;
 bzero(vap, sizeof(*vap));
 VATTR_RETURN(vap, va_nlink, 1);
 VATTR_RETURN(vap, va_mode, VREAD | VWRITE | VEXEC);
 VATTR_RETURN(vap, va_fileid, fsnode->type);
 VATTR_RETURN(vap, va_total_size, fsnode->size);
 VATTR_RETURN(vap, va_total_alloc, fsnode->size);
 VATTR_RETURN(vap, va_data_size, fsnode->size);
 VATTR_RETURN(vap, va_data_alloc, fsnode->size);

 return (0);
}
