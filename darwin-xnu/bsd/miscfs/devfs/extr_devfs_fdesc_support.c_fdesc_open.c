
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef int * thread_t ;
struct vnop_open_args {int a_context; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct TYPE_5__ {int fd_type; int fd_fd; } ;
struct TYPE_4__ {int uu_dupfd; } ;


 int EINVAL ;
 int ENODEV ;

 TYPE_3__* VTOFDESC (struct vnode*) ;
 TYPE_1__* get_bsdthread_info (int *) ;
 int panic (char*) ;
 int * vfs_context_thread (int ) ;

int
fdesc_open(struct vnop_open_args *ap)
{
 struct vnode *vp = ap->a_vp;
 thread_t thr = vfs_context_thread(ap->a_context);
 uthread_t uu;
 int error = 0;

 if (thr == ((void*)0))
  return (EINVAL);

 uu = get_bsdthread_info(thr);

 switch (VTOFDESC(vp)->fd_type) {
 case 128:
  uu->uu_dupfd = VTOFDESC(vp)->fd_fd;
  error = ENODEV;
  break;
 default:
  panic("Invalid type for fdesc node!");
  break;
 }

 return (error);
}
