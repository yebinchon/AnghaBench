
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode_attr {int dummy; } ;
struct nameidata {int dummy; } ;


 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_SET (struct vnode_attr*,int ,int) ;
 int va_mode ;
 int vn_open_auth (struct nameidata*,int*,struct vnode_attr*) ;

int
vn_open_modflags(struct nameidata *ndp, int *fmodep, int cmode)
{
 struct vnode_attr va;

 VATTR_INIT(&va);
 VATTR_SET(&va, va_mode, cmode);

 return(vn_open_auth(ndp, fmodep, &va));
}
