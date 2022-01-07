
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {int * v_data; } ;
struct fdescnode {int dummy; } ;


 int FREE (int *,int ) ;
 int LIST_REMOVE (struct fdescnode*,int ) ;
 int M_TEMP ;
 struct fdescnode* VTOFDESC (struct vnode*) ;
 int fd_hash ;
 int fdesc_lock () ;
 int fdesc_unlock () ;

int
fdesc_reclaim(struct vnop_reclaim_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct fdescnode *fd = VTOFDESC(vp);

 fdesc_lock();

 LIST_REMOVE(fd, fd_hash);
 FREE(vp->v_data, M_TEMP);
 vp->v_data = ((void*)0);

 fdesc_unlock();

 return (0);
}
