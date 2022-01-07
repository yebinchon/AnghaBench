
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct fifoinfo* v_fifoinfo; } ;
struct fifoinfo {int fi_writers; int fi_readers; } ;


 int printf (char*,int ,int ) ;

void
fifo_printinfo(struct vnode *vp)
{
 struct fifoinfo *fip = vp->v_fifoinfo;

 printf(", fifo with %ld readers and %ld writers",
  fip->fi_readers, fip->fi_writers);
}
