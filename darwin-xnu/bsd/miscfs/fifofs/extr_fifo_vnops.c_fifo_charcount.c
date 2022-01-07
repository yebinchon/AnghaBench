
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {TYPE_1__* v_fifoinfo; } ;
struct TYPE_2__ {int fi_readsock; } ;


 int FIONREAD ;
 int sock_ioctl (int ,int ,void*) ;

int
fifo_charcount(struct vnode *vp, int *count)
{
 int mcount;
 int err = sock_ioctl(vp->v_fifoinfo->fi_readsock, FIONREAD, (void*)&mcount);
 if (err == 0) {
  *count = mcount;
 }
 return err;
}
