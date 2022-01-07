
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int errno_t ;
struct TYPE_3__ {int v_lflag; int v_iocount; int v_lock; int v_owner; } ;


 int ENOENT ;
 int PVFS ;
 int VL_DRAIN ;
 int current_thread () ;
 int msleep (int*,int *,int ,char*,int *) ;
 int panic (char*) ;

__attribute__((used)) static errno_t
vnode_drain(vnode_t vp)
{

 if (vp->v_lflag & VL_DRAIN) {
  panic("vnode_drain: recursive drain");
  return(ENOENT);
 }
 vp->v_lflag |= VL_DRAIN;
 vp->v_owner = current_thread();

 while (vp->v_iocount > 1)
  msleep(&vp->v_iocount, &vp->v_lock, PVFS, "vnode_drain", ((void*)0));

 vp->v_lflag &= ~VL_DRAIN;

 return(0);
}
