
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
typedef int off_t ;


 int ubc_cs_getcdhash (struct vnode*,int ,unsigned char*) ;

int
vn_getcdhash(struct vnode *vp, off_t offset, unsigned char *cdhash)
{
 return ubc_cs_getcdhash(vp, offset, cdhash);
}
